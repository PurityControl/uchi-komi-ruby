module FileInterfaceTest
  def test_implements_the_file_interaface
    assert_respond_to @object, :each
  end
end
