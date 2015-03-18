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
    lcd = LcdNumber.new 1
    skip("need to clarify api")
    assert_equal lcd.render, ["    ", "  | ", "    ", "  | ", "    "]
  end

  def test_render_2
    lcd = LcdNumber.new 2
    skip("need to clarify api")
    assert_equal lcd.render, [" _  ", "  | ", " _  ", "|   ", " _  "]
  end

end
