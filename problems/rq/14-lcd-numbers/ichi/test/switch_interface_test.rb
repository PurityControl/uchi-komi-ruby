module SwitchInterfaceTest
  def test_implements_the_switch_interface
    assert_respond_to @object, :output_at?
  end
end
