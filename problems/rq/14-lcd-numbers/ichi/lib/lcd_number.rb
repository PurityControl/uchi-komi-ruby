class LcdNumber
  def initialize number
    @size = 1
    @top, @middle, @bottom, @upper_vertical, @lower_vertical = ""
  end

  def render
    "    \n  | \n  | \n    \n  | \n  | \n    \n"
  end

  private

  attr_reader :size

  def render_top
    top << " " << size.times{number.char_for_position(1)} << " "
  end

  def render_upper_vertical
  end

  def render_middle
  end

  def render_lower_vertical
  end

  def render_bottom
  end
end
