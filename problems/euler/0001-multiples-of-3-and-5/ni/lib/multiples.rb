
# [[file:~/workspace/uchi-komi-ruby/problems/euler/0001-multiples-of-3-and-5/ni/multiples.org::*Now%20write%20the%20code][Now\ write\ the\ code:1]]

module Multiples
  module_function
  def multiples_below limit
    (1...limit).select{|num| num % 3 == 0 or num % 5 == 0}.reduce(:+)
  end
end

# Now\ write\ the\ code:1 ends here
