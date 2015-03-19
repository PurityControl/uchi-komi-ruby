class LcdOutput
  TOP            = 64
  UPPER_LEFT     = 32
  UPPER_RIGHT    = 16
  MIDDLE         = 8
  LOWER_LEFT     = 4
  LOWER_RIGHT    = 2
  BOTTOM         = 1

  Positions = {
    top:            64,
    upper_left:     32,
    upper_right:    16,
    middle:         8,
    lower_left:     4,
    lower_right:    2,
    bottom:         1,
  }

  def self.char_for mask, mapping
    case mask
    when TOP, MIDDLE, BOTTOM
      char_or_blank mask, mapping, "_"
    else
      char_or_blank mask, mapping, "|"
    end
  end

  def self.output_at? posn_key, mask
    (mask & Positions[posn_key]) != 0
  end

  private
  def self.char_or_blank mask, mapping, char
    if (mask & mapping) == 0
      " "
    else
      char
    end
  end
end
