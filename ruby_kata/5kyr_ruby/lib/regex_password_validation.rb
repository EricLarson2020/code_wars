require 'pry'
class RegexPasswordValidation

  def validate_single_letter(string)
    !!(string =~/^[a-z]{1}$/)
  end

  def validate_at_least_one_lowercase_letter(string)
    !!(string =~ /[a-z]/)
  end

  def validate_at_least_one_upper_lowercase_letter(string)
    !!(string =~ /[a-z]+[A-Z]+/)
  end

  def validate_at_least_six_characters(string)
    !!(string =~ /.{6,}/)
  end

  def validate_password(string)
    !!(string =~ /[a-z]+[A-Z]+{6,}./)

  end

end
