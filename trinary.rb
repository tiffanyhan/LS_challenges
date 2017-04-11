require 'pry'

class Trinary
  def initialize(trinary_string)
    @trinary_string = trinary_string
  end

  def to_decimal
    return 0 unless valid_trinary?(@trinary_string)

    base = @trinary_string.length.to_i
    array = @trinary_string.chars.map do |character|
      base -= 1
      number = character.to_i
      (3**base) * number
    end
    array.reduce(:+)
  end

  def valid_trinary?(string)
    string.chars.each do |char|
      return false if !['0', '1', '2'].include?(char)
    end
    true
  end
end

Trinary.new('10').to_decimal