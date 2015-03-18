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
    assert_equal '1000000', LcdOutput::TOP
  end

  def test_mask_upper_left
    assert_equal '0100000', LcdOutput::UPPER_LEFT
  end

  def test_mask_upper_right
    assert_equal '0010000', LcdOutput::UPPER_RIGHT
  end

  def test_mask_middle
    assert_equal '0001000', LcdOutput::MIDDLE
  end

  def test_mask_lower_left
    assert_equal '0000100', LcdOutput::LOWER_LEFT
  end

  def test_mask_top
    assert_equal '0000010', LcdOutput::LOWER_RIGHT
  end

  def test_mask_top
    assert_equal '0000001', LcdOutput::BOTTOM
  end
end
