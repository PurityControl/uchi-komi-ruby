class LcdMapping
  @@mapping = {
                1 => "0010010".to_i(2),
                2 => "1011101".to_i(2),
                3 => "1011011".to_i(2),
                4 => "0111010".to_i(2),
                5 => "1101011".to_i(2),
                6 => "1101111".to_i(2),
                7 => "1010010".to_i(2),
                8 => "1111111".to_i(2),
                9 => "1111011".to_i(2),
                0 => "1110111".to_i(2),
  }

  def self.map_for key
    @@mapping[key]
  end
end
