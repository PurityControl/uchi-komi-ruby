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
    assert_equal 0b0010010, LcdMapping.map_for(1)
  end

  def test_mapping_2
    assert_equal 0b1011101, LcdMapping.map_for(2)
  end

  def test_mapping_3
    assert_equal 0b1011011, LcdMapping.map_for(3)
  end

  def test_mapping_4
    assert_equal 0b0111010, LcdMapping.map_for(4)
  end

  def test_mapping_5
    assert_equal 0b1101011, LcdMapping.map_for(5)
  end

  def test_mapping_6
    assert_equal 0b1101111, LcdMapping.map_for(6)
  end

  def test_mapping_7
    assert_equal 0b1010010, LcdMapping.map_for(7)
  end

  def test_mapping_8
    assert_equal 0b1111111, LcdMapping.map_for(8)
  end

  def test_mapping_9
    assert_equal 0b1111011, LcdMapping.map_for(9)
  end

  def test_mapping_0
    assert_equal 0b1110111, LcdMapping.map_for(0)
  end
end
