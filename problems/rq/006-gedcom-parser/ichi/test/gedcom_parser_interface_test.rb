module GedcomParserInterfaceTest
  def test_implements_the_gedcom_parser_interaface
    assert_respond_to @object, :each
  end
end
