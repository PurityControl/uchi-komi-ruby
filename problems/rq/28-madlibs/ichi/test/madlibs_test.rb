require 'minitest/autorun'
require 'rake'

require 'madlibs'

class TestMadlibs < MiniTest::Unit::TestCase
  def setup
    @madlib = Madlibs.new "A madlibs string"
  end

  def teardown
    #write teardown stuff here
  end

  def test_new_project_exists
    assert Madlibs.new("madlibs string"),
      "Madlibs needs to be initialized with a madlib string."
  end

  def test_new_needs_argument
    assert_raises(ArgumentError,
                  "Must supply a string to initialize an instance") do
      Madlibs.new
    end
  end

  def test_stored_value_p_true
    @madlib.store_value('gem:ruby')
    assert @madlib.stored_value?('gem'),
      "Must confirm the presence of a stored value"
  end

  def test_stored_value_p_false
    refute @madlib.stored_value?('gem'),
      "Must refute the absence of a stored value"
  end

  def test_named_placeholder_p_true
    assert @madlib.named_placeholder?("gem:ruby")
  end

  def test_named_placeholder_p_false
    refute @madlib.named_placeholder?("gem")
  end
end
