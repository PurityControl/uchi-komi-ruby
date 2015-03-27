class LcdNumbersFactory

  def self.create number, size
    number = number.to_s
    lcd_nums = LcdNumbers.new
    lcd_nums.numbers = number.split("").map do |char|
      LcdNumber.new(LcdMapping.map_for(Integer(char)), size)
    end
    lcd_nums
  end
end
