require 'pry'

class Octal
  def initialize(octal_str)
    @octal_str = octal_str
  end

  def to_decimal
    return 0 if @octal_str =~ /[^0-7]/

    digits = @octal_str.chars.map(&:to_i)
    digits.reverse.map.with_index do |digit, index|
      digit * (8**index)
    end.reduce(:+)

    # sum = 0
    # digits.each_with_index do |digit, index|
    #   sum += digit * (8**index)
    # end

    # sum
  end
end