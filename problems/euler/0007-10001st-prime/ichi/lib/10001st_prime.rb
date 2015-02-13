class PrimeGenerator

  def initialize
    @primes = [2]
    @current_number = 3
  end

  def get number
    while @primes.length < number do
      @primes << @current_number if prime?
      @current_number += 2
    end
    @primes[-1]
  end

  def prime?
    @primes.none?{|number| @current_number % number == 0 }
  end
end
