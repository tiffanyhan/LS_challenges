require 'pry'

class Integer
  def to_roman
    roman_numerals = %w(I V X L C D M)

    result = []
    to_s.split('').reverse.map(&:to_i).each_with_index do |digit, index|
      next if digit.zero?

      base_char, distance =
        case digit
        when (1..3) then [roman_numerals[index * 2], digit - 1]
        when (4..8) then [roman_numerals[index * 2 + 1], digit - 5]
        else             [roman_numerals[index * 2 + 2], -1]
        end

      mod_char = roman_numerals[index * 2]
      roman_numeral = if distance != distance.abs
                        (mod_char * distance.abs) + base_char
                      else
                        base_char + (mod_char * distance.abs)
                      end
      result.unshift(roman_numeral)
    end

    result.join
  end
end
