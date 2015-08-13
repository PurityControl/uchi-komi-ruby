require 'minitest/autorun'
require 'rake'

require 'palindromes'

class TestLargestPalindrome < MiniTest::Unit::TestCase
  def setup
    #write setup stuff here
    @palindrome = Palindromes.new 100, 999
  end

  def teardown
    #write teardown stuff here
  end

  def test_palindrome_p_succeeds
    assert @palindrome.send(:palindrome?, 65456)
  end

  def test_palindrome_p_fails
    refute @palindrome.send(:palindrome?, 47875)
  end

  def test_largest_palindrome
    assert_equal 906609, @palindrome.largest_palindrome
  end

end
