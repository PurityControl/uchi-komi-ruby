require_relative 'collatz'

class LongestCollatz
  def initialize from=1, to=1000000
    @from = from
    @to = to
  end

  def euler
    collatz = collect_collatz.max_by{ |collatz| collatz.count }
    collatz.seed
  end

  def collect_collatz
    from.upto(to).map{ |num| Collatz.new num }
  end

  private
  attr_accessor :from, :to
end
