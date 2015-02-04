class LargestPalindrome
  attr_accessor :lower_bound, :upper_bound

  def initialize lower, upper
    @lower_bound = lower
    @upper_bound = upper
  end

  def palindrome? number
    String(number) == String(number).reverse
  end

  def largest_palindrome
    products.sort.reverse.find{|num| palindrome? num}
  end

  def products
    #what no list comprehension :-(
    products = []
    lower_bound.upto(upper_bound) do |num1|
      lower_bound.upto(upper_bound) do |num2|
        products << num1 * num2
      end
    end
    products
  end


end
