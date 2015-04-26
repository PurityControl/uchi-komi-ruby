require "rexml/document"
class GedcomXmlWriter

  def initialize input_stream
    @input_stream = input_stream
    @xml = REXML::Document.new
    @level = 0
    @stack = []
    @root = @xml.add_element('gedcom')
  end

  def output
    input_stream.each_object do |line|
      line.id? ? add_id(line) : add_tag(line)
    end
    @xml.root
  end

  private
  def update_stack(line, node)
    stack[line.level] = node
  end

  def add_id(line)
    # could the commonality with add_tag be a method that we pass a block to?
    node = line_node(line)
    id = node.add_element line.data, {"id" => line.id}
    update_stack line, id
  end

  def add_tag(line)
    node = line_node(line)
    tag = node.add_element line.tag
    tag.text = line.data
    update_stack line, tag
  end

  def line_node(line)
    line.level == 0 ? root : stack[line.level-1]
  end

  attr_reader :xml, :input_stream, :root
  attr_accessor :stack, :level
end
