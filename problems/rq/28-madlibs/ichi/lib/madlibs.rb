class Madlibs
  attr_reader :madlib_string

  def initialize madlib_string
    @madlib_string = madlib_string
    @memoized_placeholders = Hash.new
  end

  def store_value col_del_str
    key, value = col_del_str.split(':')
    memoize_placeholder key, value
  end

  def stored_value? key
    placeholder(key) != nil
  end

  private
  # should these go into their own class and be enumerable
  def memoize_placeholder key, value
    @memoized_placeholders[key] = value
  end

  def placeholder key
    @memoized_placeholders[key]
  end
end
