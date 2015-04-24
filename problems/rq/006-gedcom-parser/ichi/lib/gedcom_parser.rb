require 'ostruct'
class GedcomParser
  include Enumerable

  def initialize file, gedcom_line_klass=OpenStruct
    @file = file
    @gedcom_line_klass = gedcom_line_klass
  end

  def each
    file.each do |line|
      yield line
    end
  end

  def each_object()
    each do |line|
      next if line.strip.empty?
      level, tag, *data = line.gsub(/\s+/, ' ').strip.split(' ')
      yield gedcom_line_klass.new(level: Integer(level),
                                  tag: tag,
                                  data: data.join(' '))
    end
  end

  private

  attr_accessor :file, :gedcom_line_klass

end
