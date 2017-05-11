require 'pry'

class SumOfMultiples
  # def initialize(*numbers)
  #   @multiples = numbers
  # end

  # def self.to(upper_limit, multiples=[3,5])
  #   (1..upper_limit).select do |number|
  #     multiples.any? { |multiple| number % multiple == 0 }
  #   end.reduce(:+)
  # end

  #   # result.first ? result.reduce(:+) : 0  end

  # def to(upper_limit)
  #   self.class.to(upper_limit, @multiples)
  # end

  def self.to(limit, multiples = [3, 5])
    (0...limit).select do |number|
      multiples.any? { |multiple| number % multiple == 0 }
    end.reduce(:+)
  end

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    self.class.to(limit, @multiples)
  end
end