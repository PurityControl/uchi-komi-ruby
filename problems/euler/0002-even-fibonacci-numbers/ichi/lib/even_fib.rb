class EvenFib
  include Enumerable
  attr_accessor :limit

  def initialize limit
    @limit = limit
  end

  def each
    a,b = 1,2
    yield a if a < limit
    while (b < limit) do
      yield b
      a,b = b, a + b
    end
  end

  def self.sum_to limit
    evenfib = EvenFib.new limit
    evenfib.select{ |num| num.even? }.reduce(:+)
  end
end
