module RendererInterfaceTest
  def test_implements_the_renderer_interface
    assert_respond_to @object, :render
  end
end
