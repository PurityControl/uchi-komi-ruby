require 'minitest/autorun'
require 'rake'

require 'selection_sort'

class TestSelectionSort < MiniTest::Unit::TestCase
  def setup
    @unsorted = [3, 8, 15, 1, 6, 3 ,2, 5, 99, 43, 77, 23, 12, 1]
    @sorted = [1, 1, 2, 3, 3, 5, 6, 8, 12, 15, 23, 43, 77, 99]
  end

  def teardown
    #write teardown stuff here
  end

  def test_selection_sort
    assert_equal @sorted, SelectionSort.sort(@unsorted)
  end

end
