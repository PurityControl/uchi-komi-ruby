class GedcomParser

  def initialize filename
    @file = File.new filename
  end

  def each
    file.each do |line|
      yield line
    end
  end

  private

  attr_accessor :file

end
