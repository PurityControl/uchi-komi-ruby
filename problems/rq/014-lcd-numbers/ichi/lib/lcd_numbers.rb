class LcdNumbers

  attr_accessor :numbers

  def initialize
    @numbers =  []
  end

  def render
    return numbers if numbers.length <= 1
    render_array = numbers.map(&:render)
    render_array[0].zip(*render_array[1..-1])
  end

  def print
    render.each do |line|
      puts line.join("")
    end
  end
end
