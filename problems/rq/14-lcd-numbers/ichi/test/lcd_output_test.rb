require 'minitest/autorun'
require 'rake'

require 'lcd_output'

class TestLcdOutput < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_mask_top
    assert_equal 0b1000000, LcdOutput::Positions[:top]
  end

  def test_mask_upper_left
    assert_equal 0b0100000, LcdOutput::Positions[:upper_left]
  end

  def test_mask_upper_right
    assert_equal 0b0010000, LcdOutput::Positions[:upper_right]
  end

  def test_mask_middle
    assert_equal 0b0001000, LcdOutput::Positions[:middle]
  end

  def test_mask_lower_left
    assert_equal 0b0000100, LcdOutput::Positions[:lower_left]
  end

  def test_mask_lower_right
    assert_equal 0b0000010, LcdOutput::Positions[:lower_right]
  end

  def test_mask_bottom
    assert_equal 0b0000001, LcdOutput::Positions[:bottom]
  end

  def test_output_at_top
    refute LcdOutput.output_at?(:top, LcdMapping.map_for(1))
    assert LcdOutput.output_at?(:top, LcdMapping.map_for(2))
  end

  def test_output_at_upper_left
    refute LcdOutput.output_at?(:upper_left, LcdMapping.map_for(1))
    assert LcdOutput.output_at?(:upper_left, LcdMapping.map_for(4))
  end

  def test_output_at_upper_right
    refute LcdOutput.output_at?(:upper_right, LcdMapping.map_for(5))
    assert LcdOutput.output_at?(:upper_right, LcdMapping.map_for(1))
  end

  def test_output_at_middle
    refute LcdOutput.output_at?(:middle, LcdMapping.map_for(1))
    assert LcdOutput.output_at?(:middle, LcdMapping.map_for(2))
  end

  def test_output_at_lower_left
    refute LcdOutput.output_at?(:lower_left, LcdMapping.map_for(1))
    assert LcdOutput.output_at?(:lower_left, LcdMapping.map_for(2))
  end

  def test_output_at_lower_right
    refute LcdOutput.output_at?(:lower_right, LcdMapping.map_for(2))
    assert LcdOutput.output_at?(:lower_right, LcdMapping.map_for(1))
  end

  def test_output_at_bottom
    refute LcdOutput.output_at?(:bottom, LcdMapping.map_for(1))
    assert LcdOutput.output_at?(:bottom, LcdMapping.map_for(2))
  end
end
