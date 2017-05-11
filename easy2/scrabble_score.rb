require 'pry'

class Scrabble
  LETTER_VALUES = {
    'AEIOULNRST' => 1,
    'DG' => 2,
    'BCMP' => 3,
    'FHVWY' => 4,
    'K' => 5,
    'JX' => 8,
    'QZ' => 10
  }.freeze

  def initialize(letters)
    @letters = letters
  end

  def score
    Scrabble.score(@letters)
  end

  def self.score(string)
    return 0 unless string =~ /^[A-z]+$/

    LETTER_VALUES.inject(0) do |total, (letters, score)|
      total += string.upcase.count(letters) * score
    end
  end
end