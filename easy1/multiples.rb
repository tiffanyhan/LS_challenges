class SumOfMultiples
  @@multiples = [3, 5]

  def self.to(upper_limit)
    limit_reached = false
    result = []

    counter = 1
    loop do
      @@multiples.sort.each_with_index do |multiple, index|
        product = counter * multiple

        if product < upper_limit
          result << product unless result.include?(product)
        elsif index.zero?
          limit_reached = true
        end
      end

      break if limit_reached
      counter += 1
    end

    result.reduce(:+)
  end
end