require 'prime'
class TriangularNumber
  include Enumerable

  attr_accessor :current_number, :total

  def initialize
    @current_number = 1
    @total = 0
  end

  def each
    while true
      self.total += current_number
      self.current_number += 1
      yield total
    end
  end

  def exceeding_divisors(limit)
    lazy.select{ |num| num_divisors(num) > limit }.first
  end

  def num_divisors product
    # 1 returns nil when calculation factors based on prime factors
    return 1 if product == 1
    factors = Prime.prime_division(product)
    factors.map{ |dividend, magnitude| magnitude + 1 } .reduce(:*)
  end
end
