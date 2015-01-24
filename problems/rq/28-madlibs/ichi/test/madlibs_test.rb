require 'minitest/autorun'
require 'rake'

require 'madlibs'

class TestMadlibs < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_new_project_exists
    assert Madlibs.new("madlibs string")
      "Madlibs needs to be initialized with a madlib string."
  end

  def test_new_needs_argument
    assert_raises(ArgumentError,
                  "Must supply a string to initialize an instance") do
      Madlibs.new
    end
  end
end
