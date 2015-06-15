module PowerDigitSum

  module_function

  def total base, exponent
    (base ** exponent).to_s.split('').map(&:to_i).reduce(&:+)
  end

end
