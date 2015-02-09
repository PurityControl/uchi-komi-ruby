module SumSquareDifference
  module_function
  def difference limit
    square_of_sums(limit) - sum_of_squares(limit)
  end

  def sum_of_squares limit
    1.upto(limit).map{ |x| x * x }.reduce(:+)
  end

  def square_of_sums limit
    sum = 1.upto(limit).reduce(:+)
    sum * sum
  end
end
