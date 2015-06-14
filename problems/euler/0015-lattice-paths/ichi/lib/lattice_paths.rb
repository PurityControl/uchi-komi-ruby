class LatticePaths

  def initialize height, width
    @height = height
    @width = width
  end

  def euler
    fact_height = (1..height).inject(:*)
    fact_width = (1..width).inject(:*)
    fact_both = (1..(width+height)).inject(:*)
    fact_both / (fact_height * fact_width)
  end

  private
  attr_accessor :height, :width
end
