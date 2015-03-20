class LcdNumbers

  attr_accessor :numbers

  def initialize
    @numbers =  []
  end

  def render
    render_array = numbers.map(&:render)
    #["", "", "", "", ""].zip(*render_array).each{|line| line.join("")}
    ["", "", "", "", ""].zip(*render_array)
  end

  def print
    render.each{|line| puts line.join("") }
  end
end
