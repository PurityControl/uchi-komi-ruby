
# [[file:~/workspace/uchi-komi-ruby/problems/euler/0001-multiples-of-3-and-5/ni/multiples.org::*Tangling][Tangling:1]]

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

  def test_multiples_below_10
    assert_equal 23, Multiples::multiples_below(10)
  end

  def test_multiples_below_1000
    assert_equal 233168, Multiples::multiples_below(1000)
  end
end

# Tangling:1 ends here
