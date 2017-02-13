require 'pry'

class Sieve
  START_RANGE = 2

  attr_reader :primes, :numbers

  def initialize(end_range)
    raise(ArgumentError) if end_range < START_RANGE
    @numbers = (START_RANGE..end_range).to_a
  end

  def primes
    # @numbers.each do |number|
    #   i = 1
    #   loop do
    #     i += 1
    #     multiple = number * i
    #     break if multiple > @numbers.last
    #     @numbers.delete(multiple)
    #   end
    # end

    # @numbers

    # solution 1
    # @numbers.each do |num| # for each number in numbers, run thru all the numbers
    #   @numbers.reject! { |item| (item != num) && (item % num).zero? }
    # end

    # @numbers

    # solution 2
    # primes = []

    # while (prime = numbers.delete_at(0))
    #   primes << prime
    #   numbers.delete_if { |number| number % prime == 0 }
    # end

    # primes

    # solution 3
    @numbers.each do |prime|
      # remove all multiples of the prime, but keep the prime itself
      @numbers.reject! { |num| (num % prime).zero? unless num == prime }
    end
  end
end

p Sieve.new(10).primes