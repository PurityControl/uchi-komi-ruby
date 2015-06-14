require 'minitest/autorun'
require 'rake'

require 'lattice_paths'

class LatticePathsTest < MiniTest::Unit::TestCase
  def setup
  end

  def teardown
    #write teardown stuff here
  end

  def test_euler_answer
    lc = LatticePaths.new 20, 20
    assert_equal 137846528820, lc.euler
  end

end
