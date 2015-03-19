class LcdOutput
  Positions = {
    top:            64,
    upper_left:     32,
    upper_right:    16,
    middle:         8,
    lower_left:     4,
    lower_right:    2,
    bottom:         1,
  }

  def self.output_at? posn_key, mask
    (mask & Positions[posn_key]) != 0
  end

end
