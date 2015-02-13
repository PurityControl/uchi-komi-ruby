require 'minitest/autorun'
require 'rake'

require '10001st_prime'

class TestPrimeGenerator < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
    @prime = PrimeGenerator.new
  end

  def teardown
    #write teardown stuff here
  end

  def test_multiples_below_10
    assert_equal 13, @prime.get(6)
  end

  def test_multiples_below_1000
    assert_equal 104743, @prime.get(10001)
  end
end
