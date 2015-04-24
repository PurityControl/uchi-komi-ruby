require 'minitest/autorun'
require 'rake'

require 'gedcom_line'

class TestGedcomLine < MiniTest::Unit::TestCase
  def setup
  end

  def teardown
    #write teardown stuff here
  end

  def test_gedcom_parser_must_be_initialised_with_hash_args
    assert_raises(ArgumentError) {GedcomLine.new()}
    assert GedcomLine.new({})
  end

end
