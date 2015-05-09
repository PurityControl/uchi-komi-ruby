class LargeSum

  def initialize long_numbers
    @long_numbers = long_numbers.map(&:to_i)
  end

  def euler
    truncate(sum, 10)
  end

  def sum
    long_numbers.reduce(:+)
  end

  def truncate(number, length)
    number.to_s()[0...length].to_i
  end

  private
  attr_accessor :long_numbers

end
