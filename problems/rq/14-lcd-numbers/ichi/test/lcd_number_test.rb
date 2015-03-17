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
    assert_equal lcd.render, "    \n  | \n  | \n    \n  | \n  | \n    \n"
  end

  def test_render_2
    lcd = LcdNumber.new 2
    assert_equal lcd.render, " -  \n  | \n  | \n -  \n|   \n|   \n -  \n"
  end

end
