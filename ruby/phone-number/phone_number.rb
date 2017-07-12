class PhoneNumber
  def self.clean(string)
    phone_number = PhoneNumberString.new(string)
    phone_number.just_digits if phone_number.valid?
  end
end

# write a blog post where you explain why you chose to make two different
# classes, one for 11 char string and one for 10 char string because of code
# in current state and esp. bc of this test:
# #test_invalid_when_11_digits_does_not_start_with_a_1


#  explain why you can't do
# string = String.new('fox')
# string => 'fox'
# CANNOT do string.contents = 'ox' because there is no method a la
#   #contents=
# so you have create a string object
# out of the string that's passed to PhoneNumberString
# still curious to know what the Ruby method looks like for #initialize
# when do you call a method on an object and when do you pass an object to a
# method ?

class PhoneNumberString < String
  attr_accessor :string

  PHONE_NUMBER_PUNCTUATION_MARKS = ['(', ')', ' ', '-', '.', '+'].freeze
  DIGITS = ('0'..'9').to_a
  AREA_CODE_DIGITS = ('2'..'9').to_a
  EXCHANGE_CODE_DIGITS = ('2'..'9').to_a
  VALID_PHONE_NUMBER_CHARS = PHONE_NUMBER_PUNCTUATION_MARKS + DIGITS

  def initialize(string)
    @string = string
    @string = standardize(string)
  end

  def standardize(string)
    remove_eleventh_digit(string)
  end

  def remove_eleventh_digit(string)
    just_digits.size == 11 ? just_digits[1..-1] : string
  end

  def valid?
    valid_area_code? && valid_exchange_code? && valid_length? &&
       all_chars_valid? #&& valid_first_digit?
  end

  def valid_area_code?
    AREA_CODE_DIGITS.include?(area_code)
  end

  def valid_exchange_code?
    EXCHANGE_CODE_DIGITS.include?(exchange_code)
  end

  def exchange_code
    just_digits[3]
  end

  def area_code
    just_digits[0]
  end
  #
  # def valid_first_digit?
  #   AREA_CODE_DIGITS.include?(first_digit)
  # end

  def just_digits
    string.chars.find_all { |char| DIGITS.include?(char) }.join
  end

  def valid_length?
    digit_count == 10
  end

  def all_chars_valid?
    chars.all? { |char| VALID_PHONE_NUMBER_CHARS.include?(char) }
  end

  def digit_count
    string.chars.count { |char| DIGITS.include?(char) }
  end

  def first_digit
    string.chars.find { |char| DIGITS.include?(char) }
  end
end

module BookKeeping
  VERSION = 2
end
