require 'minitest/autorun'
require 'rake'

require 'lcd_numbers'

class TestLcdNumbers < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_render_123
    lcd = LcdNumbers.new
    lcd.numbers << LcdNumber.new(LcdMapping.map_for(1))
    lcd.numbers << LcdNumber.new(LcdMapping.map_for(2))
    lcd.numbers << LcdNumber.new(LcdMapping.map_for(3))
    lcd.print
    assert_equal lcd.render,
      [["", "    ", " _  ", " _  "], ["", "  | ", "  | ", "  | "], ["", "    ",
      " _  ", " _  "], ["", "  | ", "|   ", "  | "], ["", "    ", " _  ", " _  "]]
  end

end
