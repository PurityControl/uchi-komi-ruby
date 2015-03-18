require 'minitest/autorun'
require 'rake'

require 'lcd_number'

class TestLcdNumber < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_render_1
    lcd = LcdNumber.new LcdMapping.map_for(1)
    #skip("need to clarify api")
    assert_equal lcd.render, ["    ", "  | ", "    ", "  | ", "    "]
  end

  def test_render_2
    lcd = LcdNumber.new LcdMapping.map_for(2)
    assert_equal lcd.render, [" _  ", "  | ", " _  ", "|   ", " _  "]
  end

  def test_render_3
    lcd = LcdNumber.new LcdMapping.map_for(3)
    assert_equal lcd.render, [" _  ", "  | ", " _  ", "  | ", " _  "]
  end

  def test_render_4
    lcd = LcdNumber.new LcdMapping.map_for(4)
    assert_equal lcd.render, ["    ", "| | ", " _  ", "  | ", "    "]
  end

  def test_render_5
    lcd = LcdNumber.new LcdMapping.map_for(5)
    assert_equal lcd.render, [" _  ", "|   ", " _  ", "  | ", " _  "]
  end

  def test_render_6
    lcd = LcdNumber.new LcdMapping.map_for(6)
    assert_equal lcd.render, [" _  ", "|   ", " _  ", "| | ", " _  "]
  end

  def test_render_7
    lcd = LcdNumber.new LcdMapping.map_for(7)
    assert_equal lcd.render, [" _  ", "  | ", "    ", "  | ", "    "]
  end

  def test_render_8
    lcd = LcdNumber.new LcdMapping.map_for(8)
    assert_equal lcd.render, [" _  ", "| | ", " _  ", "| | ", " _  "]
  end

  def test_render_9
    lcd = LcdNumber.new LcdMapping.map_for(9)
    assert_equal lcd.render, [" _  ", "| | ", " _  ", "  | ", " _  "]
  end

  def test_render_0
    lcd = LcdNumber.new LcdMapping.map_for(0)
    assert_equal lcd.render, [" _  ", "| | ", "    ", "| | ", " _  "]
  end

end
