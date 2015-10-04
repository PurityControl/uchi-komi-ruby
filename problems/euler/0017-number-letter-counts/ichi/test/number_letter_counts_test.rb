require "minitest/autorun"
require "number_letter_counts"

class NumberLetterCountsTest < Minitest::Test

  def test_class_instantiated
    instance = NumberLetterCounts.new
    refute_nil instance
  end
end
