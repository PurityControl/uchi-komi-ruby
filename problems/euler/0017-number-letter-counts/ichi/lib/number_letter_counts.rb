class NumberLetterCounts
  include Enumerable

  def initialize total
    @total = total
    @letter_from_number = [
      [10, "ten"],
      [9, "nine"],
      [8, "eight"],
      [7, "seven"],
      [6, "six"],
      [5, "five"],
      [4, "four"],
      [3, "three"],
      [2, "two"],
      [1, "one"]
    ]
  end

  def number_letter_counts
    map(&:length).reduce(:+)
  end

  def each
    1.upto(total) do |num|
      yield number_to_word num
    end
  end

  private
  attr_accessor :total, :letter_from_number

  def number_to_word num
    description = ""
    letter_from_number.each do |item, word|
      if num / item > 0
        description <<  " #{word}"
        num -= item
      end
    end
    description.strip
  end
end
