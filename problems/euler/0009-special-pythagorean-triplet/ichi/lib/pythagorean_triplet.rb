class PythagoreanTriplet
  include Enumerable

  attr_reader :number

  def each
    (1...1000).each do |a|
      (1...1000).each do |b|
        (1...1000).each do |c|
          if a+b+c == 1000 and a < b and b < c and (a**2 + b**2) == c**2
            yield [a,b,c]
          end
        end
      end
    end
  end


  def product
    first.reduce(:*)
  end
end
