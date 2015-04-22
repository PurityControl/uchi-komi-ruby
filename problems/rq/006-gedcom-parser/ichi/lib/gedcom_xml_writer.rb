require "rexml/document"
class GedcomXmlWriter

  def initiailize file
    @file = file
    @xml = REXML::Document.new file
  end

  private
  attr_reader :file, :xml
end
