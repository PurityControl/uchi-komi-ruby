module MapperInterfaceTest
  def test_implements_the_mapper_interface
    assert_respond_to @object, :map_for
  end
end
