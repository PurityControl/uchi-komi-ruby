class SmallestMultiple
  attr_reader :limit

  def initialize limit
    @limit = limit
  end

  def smallest_multiple
    set_of_limit_multiples.lazy.find { |x| all_factors? x }
  end

  def set_of_limit_multiples
    (1..Float::INFINITY).lazy.select { |x| x * limit }
  end

  def all_factors? dividend
    limit.downto(1).all? {|divisor| dividend % divisor == 0 }
  end
end
