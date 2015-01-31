require 'minitest/autorun'
require 'rake'

require 'multiples'

class TestNewProject < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_multiples_exists
    assert Multiples.new
      "Expected to be able to create a Multiple; instance"
  end

end
