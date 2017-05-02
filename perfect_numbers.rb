class PerfectNumber

  def self.classify(num)
    raise if num < 1
    divisors = (1...num).select { |possibility| num % possibility == 0}
    total = divisors.reduce(:+)
    result_string(total, num)
  end

  def self.result_string(total, num)
    case total <=> num
    when -1 then 'deficient'
    when 0  then 'perfect'
    when 1  then 'abundant'
    end
  end
end
