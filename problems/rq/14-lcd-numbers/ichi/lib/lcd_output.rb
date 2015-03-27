class LcdOutput
  Positions = {
    top:            0b1000000,
    upper_left:     0b0100000,
    upper_right:    0b0010000,
    middle:         0b0001000,
    lower_left:     0b0000100,
    lower_right:    0b0000010,
    bottom:         0b0000001,
  }

  def self.output_at? posn_key, mask
    (mask & Positions[posn_key]) != 0
  end

end
