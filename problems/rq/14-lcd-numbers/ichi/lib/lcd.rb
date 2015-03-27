require  'optparse'
require_relative  'lcd_number'
require_relative  'lcd_numbers'
require_relative  'lcd_numbers_factory'
require_relative  'lcd_mapping'
require_relative  'lcd_output'

options = { size: 2}

ARGV.options do |opts|
  script_name = File.basename($0)
  opts.banner = "Usage: ruby #{script_name} [options] number"

  opts.separator ""

  opts.on("-s", "--size size", Numeric, "Specify the size of line segments.",
          "Default: 2") { |size| options[:size] = size }

  opts.separator ""

  opts.on("-h", "--help", "Show this help message.") { puts opts; exit }

  opts.parse!
end

number = ARGV.pop

lcd_nums = LcdNumbersFactory.create(number, options[:size])
lcd_nums.print

