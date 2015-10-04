class NumberLetterCounts
  include Enumerable

  def initialize total
    @total = total
    @letter_from_number = {
      1 => "one",
      2 => "two",
      3 => "three"
    }
  end

  def number_letter_counts
    map(&:length).reduce(:+)
  end

  def each
    1.upto(total) do |num|
      yield letter_from_number[num]
    end
  end

  private
  attr_accessor :total, :letter_from_number
end
