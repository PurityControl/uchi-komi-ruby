require 'minitest/autorun'
require 'rake'
require 'ostruct'

require 'gedcom_parser'

class TestFile

  def initialize
    @attrs = ["1 @id@ 1st Line", "2  Surname 2nd Line"]
  end

  def each
    @attrs.each { |line| yield line }
  end
end

class TestFileDouble < MiniTest::Unit::TestCase
  include FileInterfaceTest

  def setup
    @object = TestFile.new
  end
end

class TestGedcomParser < MiniTest::Unit::TestCase
  def setup
  end

  def teardown
    #write teardown stuff here
  end

  def test_gedcom_parser_must_be_initialised_with_file_arg
    assert GedcomParser.new(File.new("test"))
  end

  def test_each_object_return_openstruct
    GedcomParser.new(TestFile.new).each_object do |obj|
      assert_instance_of OpenStruct, obj
    end
  end
end
