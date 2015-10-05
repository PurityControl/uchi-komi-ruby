require "minitest/autorun"
require "number_letter_counts"

class NumberLetterCountsTest < Minitest::Test
  def test_error_when_negative
    skip "nlc should throw an error when instaniated with less than 1"
  end

  def test_error_when_beyond_limit
    skip "nlc should throw an error when instantiated with more than 1000"
  end

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

  def test_to_ten
    nlc_to 10
    assert_count 39
  end

  def test_1_is_one
    nlc_to 1
    assert_equal "one", @nlc.send(:number_to_word, 1)
  end

  def test_2_is_two
    nlc_to 1
    assert_equal "two", @nlc.send(:number_to_word, 2)
  end

  def test_3_is_three
    nlc_to 1
    assert_equal "three", @nlc.send(:number_to_word, 3)
  end

  private
  def nlc_to upper
    @nlc = NumberLetterCounts.new upper
  end

  def assert_count expected
    assert_equal expected, @nlc.number_letter_counts
  end
end
