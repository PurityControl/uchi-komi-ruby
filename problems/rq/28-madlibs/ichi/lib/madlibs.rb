class Madlibs
  attr_reader :madlib_string, :placeholder_list
  attr_accessor :madlib_strf, :value_list

  def initialize madlib_string
    @madlib_string = madlib_string
    @memoized_placeholders = Hash.new
    @madlib_strf = ""
    @placeholder_list = Array.new
    @value_list = Array.new
  end

  def run
    extract_placeholders
    process_placeholders
    puts print_madlib
  end

  def print_madlib
    sprintf madlib_strf, *value_list
  end

  def process_placeholders
    self.value_list = placeholder_list.map {|ph| process_placeholder(ph) }
  end

  def process_placeholder placeholder
    if named_placeholder? placeholder
      store_value placeholder
    elsif stored_value? placeholder
      get_placeholder placeholder
    else
      value_from_user placeholder
    end
  end

  def append_to_value_list value
    @value_list << value
  end

  def store_value col_del_str
    key, prompt = col_del_str.split(':')
    value = value_from_user prompt
    memoize_placeholder key, value
  end

  def stored_value? key
    get_placeholder(key) != nil
  end

  def named_placeholder? str
    /:/ =~ str
  end

  def get_placeholder key
    @memoized_placeholders[key]
  end

  def append_placeholder_list word
    @placeholder_list << word
  end

  def extract_placeholders
    self.madlib_strf = @madlib_string.gsub(/\(\(([^)][^)]*)\)\)/).each do
      append_placeholder_list $1
      "%s"
    end
  end

  def value_from_user prompt
    print "Please enter a value for #{prompt}: "
    gets.strip
  end

  private
  # should these go into their own class and be enumerable
  def memoize_placeholder key, value
    @memoized_placeholders[key] = value
  end
end
