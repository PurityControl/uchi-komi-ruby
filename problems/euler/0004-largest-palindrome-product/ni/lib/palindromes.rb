class Palindromes
  include Enumerable

  def initialize lower, upper
    @lower_bound = lower
    @upper_bound = upper
  end

  def largest_palindrome
    self.max
  end

  private
  attr_accessor :lower_bound, :upper_bound

  def palindrome? number
    String(number) == String(number).reverse
  end

  def each
    #what no list comprehension :-(
    lower_bound.upto(upper_bound) do |num1|
      lower_bound.upto(upper_bound) do |num2|
        product = num1 * num2
         yield product if palindrome?(product)
      end
    end
  end
end
