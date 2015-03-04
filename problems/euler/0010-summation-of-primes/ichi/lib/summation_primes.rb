module SummationPrimes
  require 'prime'
  module_function

  def sum limit
    Prime.each(limit).reduce(:+)
  end
end
