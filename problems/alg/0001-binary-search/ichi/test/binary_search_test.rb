require 'minitest/autorun'
require 'rake'

require 'binary_search'

class TestBinarySearch < MiniTest::Unit::TestCase
  def setup
    fib_array = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    @binary_search = BinarySearch.new fib_array
  end

  def teardown
    #write teardown stuff here
  end

  def test_binary_search_success
    assert_equal 5, @binary_search.search(5)
  end

  def test_binary_search_failure
    assert_equal nil, @binary_search.search(6)
  end

end
