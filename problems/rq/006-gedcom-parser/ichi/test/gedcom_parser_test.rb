require 'minitest/autorun'
require 'rake'

require 'gedcom_parser'

class TestMadlibs < MiniTest::Unit::TestCase
  def setup
  end

  def teardown
    #write teardown stuff here
  end

  def test_new_project_exists
    assert GedcomParser.new
  end
end
