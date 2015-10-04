require "minitest/autorun"
require "number_letter_counts"

class NumberLetterCountsTest < Minitest::Test
  def test_to_one
    nlc_to 1
    assert_count 3
  end

  def test_to_two
    nlc_to 2
    assert_count 6
  end

  def test_to_three
    nlc_to 3
    assert_count 11
  end

  private
  def nlc_to upper
    @nlc = NumberLetterCounts.new upper
  end

  def assert_count expected
    assert_equal @nlc.number_letter_counts, expected
  end
end
