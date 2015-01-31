module Multiples
  module_function
  def multiples_below limit
    (1...limit).select{|num| num % 3 == 0 or num % 5 == 0}.reduce(:+)
  end
end
