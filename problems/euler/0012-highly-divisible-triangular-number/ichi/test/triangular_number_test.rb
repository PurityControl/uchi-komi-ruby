require 'minitest/autorun'
require 'rake'

require 'triangular_number'

class TestTriangularNumber < MiniTest::Unit::TestCase
  def setup
    @triangular = TriangularNumber.new
  end

  def teardown
    #write teardown stuff here
  end

  def test_number_divisors_27
    assert_equal 4, @triangular.num_divisors(27)
  end

  def test_number_divisors_28
    assert_equal 6, @triangular.num_divisors(28)
  end

  def test_euler_answer
    assert_equal 76576500, @triangular.exceeding_divisors(500)
  end
end
