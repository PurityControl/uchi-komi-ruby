class NumberLetterCounts
  include Enumerable

  def initialize total
    check_within_bounds total
    @total = total
    @letter_from_number = [
      [1000, "onethousand"],
      [900, "ninehundred"],
      [800, "eighthundred"],
      [700, "sevenhundred"],
      [600, "sixhundred"],
      [500, "fivehundred"],
      [400, "fourhundred"],
      [300, "threehundred"],
      [200, "twohundred"],
      [100, "onehundred"],
      [90, "ninety"],
      [80, "eighty"],
      [70, "seventy"],
      [60, "sixty"],
      [50, "fifty"],
      [40, "forty"],
      [30, "thirty"],
      [20, "twenty"],
      [19, "nineteen"],
      [18, "eighteen"],
      [17, "seventeen"],
      [16, "sixteen"],
      [15, "fifteen"],
      [14, "fourteen"],
      [13, "thirteen"],
      [12, "twelve"],
      [11, "eleven"],
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

  def check_within_bounds num
    raise ArgumentError.new("Number must be greater than 0") if num <= 0
    raise ArgumentError.new("Number cannot exceed 1000") if num > 1000
  end

  def number_to_word num
    description = ""
    letter_from_number.each do |item, word|
      if num / item > 0
        description <<  word
        if num > 100 && num % item != 0
          description << "and"
        end
        num -= item
      end
    end
    description.strip
  end
end
