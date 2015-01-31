require 'minitest/autorun'
require 'rake'

require 'even_fib'

class TestNewProject < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
  end

  def teardown
    #write teardown stuff here
  end

  def test_sum_even_fibs_to_4_000_000
    assert_equal 4613732, EvenFib::sum_to(4000000)
  end

end
