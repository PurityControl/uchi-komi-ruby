require 'minitest/autorun'
require 'rake'

require 'gedcom_parser'

class TestMadlibs < MiniTest::Unit::TestCase
  def setup
  end

  def teardown
    #write teardown stuff here
  end

  def test_gedcom_parser_must_be_initialised_with_filename_arg
    assert GedcomParser.new "test"
  end
end
