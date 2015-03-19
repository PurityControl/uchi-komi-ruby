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
    assert_equal 64, LcdOutput::TOP
  end

  def test_mask_upper_left
    assert_equal 32, LcdOutput::UPPER_LEFT
  end

  def test_mask_upper_right
    assert_equal 16, LcdOutput::UPPER_RIGHT
  end

  def test_mask_middle
    assert_equal 8, LcdOutput::MIDDLE
  end

  def test_mask_lower_left
    assert_equal 4, LcdOutput::LOWER_LEFT
  end

  def test_mask_lower_right
    assert_equal 2, LcdOutput::LOWER_RIGHT
  end

  def test_mask_bottom
    assert_equal 1, LcdOutput::BOTTOM
  end

  def test_char_for_top
    assert_equal ' ',
      LcdOutput.char_for(LcdOutput::TOP, LcdMapping.map_for(1))
    assert_equal '_',
      LcdOutput.char_for(LcdOutput::TOP, LcdMapping.map_for(2))
  end

  def test_char_for_upper_left
    assert_equal ' ',
      LcdOutput.char_for(LcdOutput::UPPER_LEFT, LcdMapping.map_for(1))
    assert_equal '|',
      LcdOutput.char_for(LcdOutput::UPPER_LEFT, LcdMapping.map_for(4))
  end

  def test_char_for_upper_right
    assert_equal ' ',
      LcdOutput.char_for(LcdOutput::UPPER_RIGHT, LcdMapping.map_for(5))
    assert_equal '|',
      LcdOutput.char_for(LcdOutput::UPPER_RIGHT, LcdMapping.map_for(1))
  end

  def test_char_for_middle
    assert_equal ' ',
      LcdOutput.char_for(LcdOutput::MIDDLE, LcdMapping.map_for(1))
    assert_equal '_',
      LcdOutput.char_for(LcdOutput::MIDDLE, LcdMapping.map_for(2))
  end

  def test_char_for_lower_left
    assert_equal ' ',
      LcdOutput.char_for(LcdOutput::LOWER_LEFT, LcdMapping.map_for(1))
    assert_equal '|',
      LcdOutput.char_for(LcdOutput::LOWER_LEFT, LcdMapping.map_for(2))
  end

  def test_char_for_lower_right
    assert_equal ' ',
      LcdOutput.char_for(LcdOutput::LOWER_RIGHT, LcdMapping.map_for(2))
    assert_equal '|',
      LcdOutput.char_for(LcdOutput::LOWER_RIGHT, LcdMapping.map_for(1))
  end

  def test_char_for_bottom
    assert_equal ' ',
      LcdOutput.char_for(LcdOutput::BOTTOM, LcdMapping.map_for(1))
    assert_equal '_',
      LcdOutput.char_for(LcdOutput::BOTTOM, LcdMapping.map_for(2))
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
