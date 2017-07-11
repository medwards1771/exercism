class PhoneNumber
  def self.clean(string)
    phone_number = PhoneNumberString.new(string)
    phone_number.clean if phone_number.valid?
  end
end

class PhoneNumberString < String
  PHONE_NUMBER_PUNCTUATION_MARKS = ['(', ')', ' ', '-', '.', '+'].freeze
  DIGITS = ('0'..'9').to_a
  AREA_CODE_DIGITS = ('2'..'9').to_a
  EXCHANGE_CODE_DIGITS = ('2'..'9').to_a
  VALID_PHONE_NUMBER_CHARS = PHONE_NUMBER_PUNCTUATION_MARKS + DIGITS

  def clean
    if digit_count == 10
      just_digits
    elsif digit_count == 11
      just_digits[1..-1]
    end
  end

  def valid?
    valid_area_code? && valid_exchange_code? && valid_length? &&
      all_chars_valid? && valid_first_digit?
  end

  def valid_area_code?
    AREA_CODE_DIGITS.include?(area_code)
  end

  def valid_exchange_code?
    EXCHANGE_CODE_DIGITS.include?(exchange_code)
  end

  def exchange_code
    if digit_count == 10
      just_digits[3]
    elsif digit_count == 11
      just_digits[4]
    end
  end

  def area_code
    if digit_count == 10
      just_digits[0]
    elsif digit_count == 11
      just_digits[1]
    end
  end

  def valid_first_digit?
    if digit_count == 11
      first_digit == '1'
    elsif digit_count == 10
      AREA_CODE_DIGITS.include?(first_digit)
    end
  end

  def just_digits
    chars.find_all { |char| DIGITS.include?(char) }.join
  end

  def valid_length?
    digit_count == 10 || digit_count == 11
  end

  def all_chars_valid?
    chars.all? { |char| VALID_PHONE_NUMBER_CHARS.include?(char) }
  end

  def digit_count
    chars.count { |char| DIGITS.include?(char) }
  end

  def first_digit
    chars.find { |char| DIGITS.include?(char) }
  end
end

module BookKeeping
  VERSION = 2
end
