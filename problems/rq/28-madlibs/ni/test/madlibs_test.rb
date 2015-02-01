require 'minitest/autorun'
require 'rake'

require 'madlibs'

class Madlibs
  def value_from_user prompt
    "ruby"
  end
end

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
    @madlib.send(:store_value,'gem:ruby')
    assert @madlib.send(:stored_value?, 'gem'),
      "Must confirm the presence of a stored value"
  end

  def test_stored_value_p_false
    refute @madlib.send(:stored_value?, 'gem'),
      "Must refute the absence of a stored value"
  end

  def test_named_token_p_true
    assert @madlib.send(:named_token?,"gem:ruby")
  end

  def test_named_token_p_false
    refute @madlib.send(:named_token?,"gem")
  end

  def test_token_returns_value
    @madlib.send(:store_value,'gem:ruby')
    assert_equal @madlib.send(:get_token, 'gem'), 'ruby',
      "The stored value should be returned"
  end

  def test_extract_single_token
    madlib = Madlibs.new "my favourite gemstone is ((gem))"
    madlib.send(:extract_tokens)
    assert_equal ["gem"], madlib.tokens,
      "extract tokens should have a tokens with one item"
  end

  def test_extract_multiple_tokens
    madlib = Madlibs.new "my favourite gemstone is ((gem)) not ((other gem))"
    madlib.send(:extract_tokens)
    assert_equal ["gem", "other gem"], madlib.tokens,
      "extract tokens should have a tokens with two items"
  end

  def test_madlib_strf_single_token
    madlib = Madlibs.new "my favourite gemstone is ((gem))"
    madlib.send(:extract_tokens)
    assert_equal "my favourite gemstone is %s", madlib.madlib_strf,
      "extract tokens should have a madlib_strf with one format string"
  end

  def test_store_value_returns_stored_value
    assert_equal "ruby", @madlib.send(:store_value,"gem:ruby")
  end

  def test_tokens_to_values
    madlib = Madlibs.new "my favourite gemstone is ((gem:a gem)) and ((a gem)) is not ((other gem))"
    madlib.send(:extract_tokens)
    madlib.send(:tokens_to_values)
    assert_equal ["ruby", "ruby", "ruby"], madlib.token_values
  end

  def test_print_madlib
    madlib = Madlibs.new "my favourite gemstone is ((gem:a gem)) and ((a gem)) is not ((other gem))"
    madlib.send(:extract_tokens)
    madlib.send(:tokens_to_values)
    assert_equal "my favourite gemstone is ruby and ruby is not ruby",
      madlib.send(:print_madlib)
  end
end
