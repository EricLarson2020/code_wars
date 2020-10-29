require "minitest/autorun"
require './lib/regex_password_validation.rb'
class TestRegexPasswordValidation < Minitest::Test
  def setup
    @validation = RegexPasswordValidation.new
  end

  def test_it_validates_single_letters
    assert_equal true, @validation.validate_single_letter("a")
    assert_equal false, @validation.validate_single_letter("ab")
  end

  def test_it_validates_at_least_one_lowercase_letter
    assert_equal true, @validation.validate_at_least_one_lowercase_letter("abc")
    assert_equal false, @validation.validate_at_least_one_lowercase_letter("ABC")
    assert_equal true, @validation.validate_at_least_one_lowercase_letter("aBC")
  end
  #
  def test_it_validates_at_least_one_upper_and_lowercase_letter
    assert_equal true, @validation.validate_at_least_one_upper_lowercase_letter("AbC")
    assert_equal false, @validation.validate_at_least_one_upper_lowercase_letter("ABC")
    assert_equal false, @validation.validate_at_least_one_upper_lowercase_letter("abc")
  end

  def test_it_validates_at_least_six_characters
    assert_equal true, @validation.validate_at_least_six_characters("aaaaaa")
    assert_equal false, @validation.validate_at_least_six_characters("aaaaa")
  end

  def test_validate_password
    assert_equal true, @validation.validate_password('aAbcda')
    # assert_equal false, @validation.validate_password('Abcd1')
    # assert_equal false, @validation.validate_password('Abcdadc')

  end

end
