class Collatz
  include Enumerable

  attr_accessor :seed

  def initialize seed
    @current = @seed = seed
  end

  def each
    while current != 1
      yield current
      current = collatz
    end
    yield 1
  end

  private
  attr_accessor :current

  def collatz
    if current % 2 == 0
      self.current = current / 2
    else
      self.current = current * 3 + 1
    end
  end

end
