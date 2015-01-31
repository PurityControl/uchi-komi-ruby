class Madlibs
  attr_reader :madlib_string, :tokens
  attr_accessor :madlib_strf, :token_values

  def initialize madlib_string
    @madlib_string = madlib_string
    @memoized_tokens = Hash.new
    @madlib_strf = ""
    @tokens = Array.new
    @token_values = Array.new
  end

  def run
    extract_tokens
    tokens_to_values
    puts print_madlib
  end

  def print_madlib
    sprintf madlib_strf, *token_values
  end

  def tokens_to_values
    self.token_values = tokens.map {|tok| token_to_value(tok) }
  end

  def token_to_value token
    if named_token? token
      store_value token
    elsif stored_value? token
      get_token token
    else
      value_from_user token
    end
  end

  def append_to_token_values value
    @token_values << value
  end

  def store_value col_del_str
    key, prompt = col_del_str.split(':')
    value = value_from_user prompt
    memoize_token key, value
  end

  def stored_value? key
    get_token(key) != nil
  end

  def named_token? str
    /:/ =~ str
  end

  def get_token key
    @memoized_tokens[key]
  end

  def append_tokens word
    @tokens << word
  end

  def extract_tokens
    self.madlib_strf = @madlib_string.gsub(/\(\(([^)][^)]*)\)\)/).each do
      append_tokens $1
      "%s"
    end
  end

  def value_from_user prompt
    print "Please enter a value for #{prompt}: "
    gets.strip
  end

  private
  # should these go into their own class and be enumerable
  def memoize_token key, value
    @memoized_tokens[key] = value
  end
end
