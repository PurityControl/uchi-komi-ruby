require 'minitest/autorun'
require 'rake'

require 'smallest_multiple'

class TestSmallestMultiple < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_all_factors_10
    smallest_multiple = SmallestMultiple.new 10
    assert smallest_multiple.all_factors? 2520
    refute smallest_multiple.all_factors? 2521
  end

  def test_all_factors_20
    smallest_multiple = SmallestMultiple.new 20
    assert smallest_multiple.all_factors? 232792560
    refute smallest_multiple.all_factors? 232792561
  end

  def test_smallest_multiple_for_1_to_10
    smallest_multiple = SmallestMultiple.new 10
    assert_equal 2520, smallest_multiple.smallest_multiple
  end

  def test_smallest_multiple_for_1_to_20
    #skip
    smallest_multiple = SmallestMultiple.new 20
    assert_equal 232792560, smallest_multiple.smallest_multiple
  end

end
