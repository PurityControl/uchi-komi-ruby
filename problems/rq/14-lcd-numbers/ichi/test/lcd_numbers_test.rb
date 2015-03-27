require 'minitest/autorun'
require 'rake'

require 'lcd_numbers'
require 'lcd_numbers_factory'

class TestLcdNumbers < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_render_123
    lcd = LcdNumbersFactory.create 123, 1
    assert_equal lcd.render,
      [["    ", " _  ", " _  "], ["  | ", "  | ", "  | "],
      ["    ", " _  ", " _  "], ["  | ", "|   ", "  | "],
      ["    ", " _  ", " _  "]]
  end

  def test_render_123_size_2
    lcd = LcdNumbersFactory.create 123, 2
    assert_equal lcd.render,
      [["     ", " __  ", " __  "], ["   | ", "   | ", "   | "],
      ["   | ", "   | ", "   | "], ["     ", " __  ", " __  "],
      ["   | ", "|    ", "   | "], ["   | ", "|    ", "   | "],
      ["     ", " __  ", " __  "]]
  end

end
