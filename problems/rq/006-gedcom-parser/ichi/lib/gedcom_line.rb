class GedcomLine
  attr_reader :level, :tag, :data

  def initialize args
    @level = args[:level]
    @tag = args[:tag]
    @data = args[:data]
  end

  def id
    id? ? tag : nil
  end

  def id?
    /^@.*@$/ =~ tag
  end

end

