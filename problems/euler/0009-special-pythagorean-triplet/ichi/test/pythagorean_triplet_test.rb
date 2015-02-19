require 'minitest/autorun'
require 'rake'

require 'pythagorean_triplet'

class TestLargestProduct < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
    @triplet = PythagoreanTriplet.new
  end

  def teardown
    #write teardown stuff here
  end

  def test_product_pythagorean_triplet
    assert_equal 31875000, @triplet.product
  end
end
