module GedcomLineInterfaceTest
  def test_implements_the_gedcom_line_interaface
    assert_respond_to @object, :level
    assert_respond_to @object, :tag
    assert_respond_to @object, :data
    assert_respond_to @object, :id?
    assert_respond_to @object, :id
  end
end
