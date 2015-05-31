class BinarySearch

  def initialize sorted_coll
    @sorted_coll = sorted_coll
  end

  def search item
    start = 0
    last = sorted_coll.length - 1

    while start <= last do
      mid = (start + last) / 2
      guess = sorted_coll[mid]
      return item if guess == item
      if guess < item
        start = mid + 1
      else
        last = mid - 1
      end
    end
    return nil
  end

  private
  attr_accessor :sorted_coll
end
