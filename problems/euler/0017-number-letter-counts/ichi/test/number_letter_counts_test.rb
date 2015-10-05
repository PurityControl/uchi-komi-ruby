require "minitest/autorun"
require "number_letter_counts"

class NumberLetterCountsTest < Minitest::Test
  def test_error_when_negative
    assert_raises(ArgumentError) {NumberLetterCounts.new 0}
  end

  def test_error_when_beyond_limit
    assert_raises(ArgumentError) {NumberLetterCounts.new 1001}
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

  def test_to_twenty
    nlc_to 20
    assert_count 112
  end

  def test_to_twenty_one
    nlc_to 21
    assert_count 121
  end

  def test_to_twenty_nine
    nlc_to 29
    assert_count 202
  end

  def test_to_thirty
    nlc_to 30
    assert_count 208
  end

  def test_to_thirty_nine
    nlc_to 39
    assert_count 298
  end

  def test_to_forty
    nlc_to 40
    assert_count 303
  end

  def test_to_forty_nine
    nlc_to 49
    assert_count 384
  end

  def test_to_fifty_nine
    nlc_to 59
    assert_count 470
  end

  def test_to_sixty_nine
    nlc_to 69
    assert_count 556
  end

  def test_to_seventy_nine
    nlc_to 79
    assert_count 662
  end

  def test_to_eighty_nine
    nlc_to 89
    assert_count 758
  end

  def test_to_ninety_nine
    nlc_to 99
    assert_count 854
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
