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
    self.top = render_horizontal(:top)
  end

  def render_upper_vertical
    self.upper_vertical = render_vertical :upper_left, :upper_right
  end

  def render_middle
    self.middle = render_horizontal :middle
  end

  def render_lower_vertical
    self.lower_vertical = render_vertical :lower_left, :lower_right
  end

  def render_bottom
    self.bottom = render_horizontal :bottom
  end

  def char_or_blank mask, mapping, char
    if LcdOutput.output_at? mask, mapping
      char
    else
      " "
    end
  end

  def char_for mask, mapping
    case mask
    when :top, :middle, :bottom
      char_or_blank mask, mapping, "_"
    else
      char_or_blank mask, mapping, "|"
    end
  end

  def render_horizontal position
    tmp = " "
    size.times do
      #TODO char_for should be part of this class the call should be to
      #a boolean output_at? in order to clearly seperate roles
      tmp << char_for(position, number)
    end
    tmp << "  "
  end

  def render_vertical left, right
    rows = []
    tmp = ""
    size.times do
      tmp << char_for(left ,number) << " " << char_for(right, number) << " "
      rows << tmp
    end
    rows
  end
end
