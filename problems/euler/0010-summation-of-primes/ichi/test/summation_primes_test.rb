require 'minitest/autorun'
require 'rake'

require 'summation_primes'

class TestSummationsPrimes < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_product_pythagorean_triplet
    assert_equal 142913828922, SummationPrimes.sum(2000000)
  end
end
