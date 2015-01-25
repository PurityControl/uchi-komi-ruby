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

  def test_placeholder_returns_value
    @madlib.store_value('gem:ruby')
    assert_equal @madlib.placeholder('gem'), 'ruby',
      "The stored value should be returned"
  end

  def test_extract_single_placeholder
    madlib = Madlibs.new "my favourite gemstone is ((gem))"
    madlib.extract_placeholders
    assert_equal ["gem"], madlib.placeholder_list,
      "extract placeholders should have a placeholder_list with one item"
  end

  def test_extract_multiple_placeholders
    madlib = Madlibs.new "my favourite gemstone is ((gem)) not ((other gem))"
    madlib.extract_placeholders
    assert_equal ["gem", "other gem"], madlib.placeholder_list,
      "extract placeholders should have a placeholder_list with two items"
  end

  def test_madlib_strf_single_placeholder
    madlib = Madlibs.new "my favourite gemstone is ((gem))"
    madlib.extract_placeholders
    assert_equal "my favourite gemstone is %s", madlib.madlib_strf,
      "extract placeholders should have a madlib_strf with one format string"
  end
end
