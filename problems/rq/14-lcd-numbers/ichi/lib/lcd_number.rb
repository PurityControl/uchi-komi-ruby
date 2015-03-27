class LcdNumber
  def initialize args
    @number = args[:number]
    @size = args.fetch(:size, 2)
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

  def char_for_position mask, mapping
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
      tmp << char_for_position(position, number)
    end
    tmp << "  "
  end

  def render_vertical left, right
    rows = []
    tmp = ""
    size.times do
      tmp << char_for_position(left, number)
      size.times{ tmp << " " }
      tmp << char_for_position(right, number) << " "
      rows << tmp
      tmp = ""
    end
    rows
  end
end
