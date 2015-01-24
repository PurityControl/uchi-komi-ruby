class Madlibs
  attr_reader :madlib_string

  def initialize madlib_string
    @madlib_string = madlib_string
  end

  def store_value col_del_str
  end

  def stored_value? key
    true
  end
end
