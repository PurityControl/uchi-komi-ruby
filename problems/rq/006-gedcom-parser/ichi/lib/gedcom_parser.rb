require 'ostruct'
class GedcomParser
  include Enumerable

  def initialize file
    @file = file
  end

  def each
    file.each do |line|
      yield line
    end
  end

  def each_object(klass=OpenStruct)
    each do |line|
      level, tag, data = line.gsub(/\s+/, ' ').strip.split(" ")
      yield klass.new(level: level, tag: tag, data: data)
    end
  end

  private

  attr_accessor :file

end
