require 'minitest/autorun'
require 'rake'

require 'gedcom_xml_writer'

class TestGedcomXmlWriter < MiniTest::Test
  def setup
  end

  def teardown
    #write teardown stuff here
  end

  def test_gedcom_parser_must_be_initialised_with_file_arg
    assert GedcomParser.new(File.new("test"))
  end

end
