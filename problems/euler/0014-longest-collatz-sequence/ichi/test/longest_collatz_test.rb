require 'minitest/autorun'
require 'rake'

require 'collatz'
require 'longest_collatz'

class LongestCollatzTest < MiniTest::Unit::TestCase
  def setup
  end

  def teardown
    #write teardown stuff here
  end

  def test_collatz_sequence
    cs = Collatz.new 13
    assert_equal cs.collect(&:to_i), [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
  end

  def test_euler_answer
    lc = LongestCollatz.new
    assert_equal 837799, lc.euler
  end

end
