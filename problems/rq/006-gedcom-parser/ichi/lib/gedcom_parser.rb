require 'ostruct'
class GedcomParser
  include Enumerable

  def initialize file, gedcom_line_klass=nil
    @file = file
    @gedcom_line_klass = gedcom_line_klass
  end

  def each
    if gedcom_line_klass
      file.each do |line|
        next if line.strip.empty?
        level, tag, *data = line.gsub(/\s+/, ' ').strip.split(' ')
        yield gedcom_line_klass.new(level: Integer(level),
                                    tag: tag,
                                    data: data.join(' '))
      end
    else
      file.each do |line|
        yield line
      end
    end
  end

  private
  attr_accessor :file, :gedcom_line_klass

end
