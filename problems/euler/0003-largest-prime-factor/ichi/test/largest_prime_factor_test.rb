require 'minitest/autorun'
require 'rake'

require 'largest_prime_factor'

class TestLargestPrimeFactor < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
    @number = LargestPrimeFactor.new 600851475143
  end

  def teardown
    #write teardown stuff here
  end

  def test_prime_factors_product_empty_1
    assert_equal 1, @number.prime_factors_product([])
  end

  def test_lowest_prime_factor
    assert_equal 71, @number.lowest_prime_factor(600851475143)
  end

  def test_largest_prime_factor_for_600851475143
    assert_equal 6857, @number.largest_prime
  end

end
