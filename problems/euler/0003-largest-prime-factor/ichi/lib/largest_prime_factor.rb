class LargestPrimeFactor
  require 'prime'
  attr_accessor :number, :primes

  def initialize number
    @number = number
  end

  def largest_prime
    prime_factors.max
  end

  def prime_factors
    prime_factors = []
    while true do
      prime_factors <<
        lowest_prime_factor(number / prime_factors_product(prime_factors))
      break if prime_factors_product(prime_factors) == number
    end
    prime_factors
  end

  def prime_factors_product prime_factors
    prime_factors.reduce(1, :*)
  end

  def lowest_prime_factor(product)
    Prime.each(product).find{|p| (product) % p == 0}
  end
end
