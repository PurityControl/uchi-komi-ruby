class LcdNumber
  def initialize number
    @number = number
    @size = 1
  end

  def render
    render_top
    render_upper_vertical
    render_middle
    render_lower_vertical
    render_bottom
    [top, upper_vertical, middle, lower_vertical, bottom].flatten
  end

  private

  attr_reader :size, :number
  attr_accessor :top, :middle, :bottom, :upper_vertical, :lower_vertical

  def render_top
    self.top = render_horizontal(LcdOutput::TOP)
  end

  def render_upper_vertical
    self.upper_vertical = render_vertical LcdOutput::UPPER_LEFT,
      LcdOutput::UPPER_RIGHT
  end

  def render_middle
    self.middle = render_horizontal LcdOutput::MIDDLE
  end

  def render_lower_vertical
    self.lower_vertical = render_vertical LcdOutput::LOWER_LEFT,
      LcdOutput::LOWER_RIGHT
  end

  def render_bottom
    self.bottom = render_horizontal LcdOutput::BOTTOM
  end

  def render_horizontal position
    tmp = " "
    size.times do
      tmp << LcdOutput.char_for(position, number)
    end
    tmp << "  "
  end

  def render_vertical left, right
    rows = []
    tmp = ""
    size.times do
      tmp << LcdOutput.char_for(left ,number) << " " <<
        LcdOutput.char_for(right, number) << " "
      rows << tmp
    end
    rows
  end
end
