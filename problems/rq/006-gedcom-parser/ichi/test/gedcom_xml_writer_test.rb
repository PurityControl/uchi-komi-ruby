require 'minitest/autorun'
require 'rake'

require 'gedcom_xml_writer'
require 'gedcom_parser'
require 'gedcom_line'

class TestGedcomXmlWriter < MiniTest::Test
  def setup
    @ged = ["0 tag data", "1 tag2 data2"]
    @xml = "<gedcom><tag>data<tag2>data2</tag2></tag></gedcom>"
  end

  def teardown
    #write teardown stuff here
  end

  def test_gedcom_parser_must_be_initialised_with_file_arg
    assert GedcomParser.new(File.new("test"))
  end

  def test_output
    gp = GedcomParser.new @ged, GedcomLine
    formatter = REXML::Formatters::Pretty.new
    gxw = GedcomXmlWriter.new gp
    assert_equal "#{gxw.output}", @xml
  end
end
