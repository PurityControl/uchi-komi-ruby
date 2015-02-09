require 'minitest/autorun'
require 'rake'

require 'sum_square_difference'

class TestNewProject < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_multiples_below_10
    assert_equal 2640, SumSquareDifference::difference(10)
  end

  def test_multiples_below_1000
    assert_equal 25164150, SumSquareDifference::difference(100)
  end
end
