require 'minitest/autorun'
require 'rake'
require 'ostruct'

require 'gedcom_parser'
require 'gedcom_line'

class TestFile

  def initialize
    @attrs = ["1 @id@ 1st Line", "2  Surname 2nd Line"]
  end

  def each
    @attrs.each { |line| yield line }
  end
end

class TestFileDouble < MiniTest::Test
  include FileInterfaceTest

  def setup
    @object = TestFile.new
  end
end

class TestGedcomParser < MiniTest::Test
  include GedcomParserInterfaceTest
  def setup
    @object =  GedcomParser.new(File.new("test"))
  end

  def teardown
    #write teardown stuff here
  end

  def test_gedcom_parser_must_be_initialised_with_file_arg
    assert GedcomParser.new(File.new("test"))
  end

  def test_each_returns_string
    GedcomParser.new(TestFile.new).each do |obj|
      assert_instance_of String, obj
    end
  end

  def test_each_returns_oject_passed_at_instantiation
    GedcomParser.new(TestFile.new, GedcomLine).each do |obj|
      assert_instance_of GedcomLine, obj
    end
  end
end
