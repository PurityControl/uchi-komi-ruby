class LcdNumbersFactory

  def self.create number, size
    number = number.to_s
    lcd_nums = LcdNumbers.new
    lcd_nums.numbers = number.split("").map do |digit|
      LcdNumber.new number: LcdMapping.map_for(Integer(digit)), size: size
    end
    lcd_nums
  end
end
