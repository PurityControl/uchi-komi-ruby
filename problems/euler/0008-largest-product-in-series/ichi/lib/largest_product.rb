class LargestProduct
  include Enumerable

  attr_reader :number, :series_length

  def initialize number, series_length
    @number = String(number)
    @series_length = series_length
  end

  def each
    for i in 0..(number.length - series_length) do
      yield number[i...(i + series_length)]
    end
  end

  def largest_product
    map{|item| product(item)}.max
  end

  def product string
    string.split('').map{ |item| Integer(item) }.reduce(:*)
  end
end
