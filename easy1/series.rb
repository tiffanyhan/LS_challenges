require 'pry'

class Series
  def initialize(string)
    @digits = string.chars.map(&:to_i)
  end

  def slices(length)
    raise ArgumentError, 'slice length is too big' if length > @digits.size
    @digits.each_cons(length).to_a

    # result = []
    # index = 0

    # while index <= @digits.length - length
    #   selected_digits = []
    #   selected_str = @digits[index, length]
    #   selected_str.chars.each { |char| selected_digits << char.to_i }
    #   result << selected_digits

    #   index += 1
    # end

    # result
  end
end