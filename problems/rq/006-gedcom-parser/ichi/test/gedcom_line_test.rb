require 'minitest/autorun'
require 'rake'

require 'gedcom_line'

class TestGedcomLine < MiniTest::Test
  include GedcomLineInterfaceTest

  def setup
    @object = GedcomLine.new id: 1, tag: "tag", data: "data"
  end

  def teardown
    #write teardown stuff here
  end

  def test_gedcom_parser_must_be_initialised_with_hash_args
    assert_raises(ArgumentError) {GedcomLine.new()}
    assert GedcomLine.new({})
  end

end
