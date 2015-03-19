require 'minitest/autorun'
require 'rake'

require 'lcd_mapping'

class TestLcdMapping < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_mapping_1
    assert_equal '0010010'.to_i(2), LcdMapping.map_for(1)
  end

  def test_mapping_2
    assert_equal '1011101'.to_i(2), LcdMapping.map_for(2)
  end

  def test_mapping_3
    assert_equal '1011011'.to_i(2), LcdMapping.map_for(3)
  end

  def test_mapping_4
    assert_equal '0111010'.to_i(2), LcdMapping.map_for(4)
  end

  def test_mapping_5
    assert_equal '1101011'.to_i(2), LcdMapping.map_for(5)
  end

  def test_mapping_6
    assert_equal '1101111'.to_i(2), LcdMapping.map_for(6)
  end

  def test_mapping_7
    assert_equal '1010010'.to_i(2), LcdMapping.map_for(7)
  end

  def test_mapping_8
    assert_equal '1111111'.to_i(2), LcdMapping.map_for(8)
  end

  def test_mapping_9
    assert_equal '1111011'.to_i(2), LcdMapping.map_for(9)
  end

  def test_mapping_0
    assert_equal '1110111'.to_i(2), LcdMapping.map_for(0)
  end
end