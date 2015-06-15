require 'minitest/autorun'
require 'rake'

require 'power_digit_sum'

class PowerDigitSumTest < MiniTest::Unit::TestCase
  def setup
  end

  def teardown
    #write teardown stuff here
  end

  def test_two_power_fifteen
    euler = PowerDigitSum::total 2, 15
    assert_equal 26, euler
  end

  def test_euler_answer
    euler = PowerDigitSum::total 2, 1000
    assert_equal 1366, euler
  end

end
