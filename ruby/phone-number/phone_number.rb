class PhoneNumber
  def self.clean(string)
    if string.digit_count == 11
      fone_number = ElevenDigitFoneNumber.new(string)
    elsif string.digit_count == 10
      fone_number = TenDigitFoneNumber.new(string)
    else
      return nil
    end
    fone_number.clean if fone_number.valid?
  end
end

class String
  DIGITS = ('0'..'9').to_a

  def digit_count
    chars.count { |char| DIGITS.include?(char) }
  end
end

class FoneNumber < String
  PHONE_NUMBER_PUNCTUATION_MARKS = ['(', ')', ' ', '-', '.', '+'].freeze
  AREA_CODE_DIGITS = ('2'..'9').to_a
  EXCHANGE_CODE_DIGITS = ('2'..'9').to_a
  VALID_PHONE_NUMBER_CHARS = PHONE_NUMBER_PUNCTUATION_MARKS + DIGITS

  def valid_area_code?
    AREA_CODE_DIGITS.include?(area_code)
  end

  def valid_exchange_code?
    EXCHANGE_CODE_DIGITS.include?(exchange_code)
  end

  def just_digits
    chars.find_all { |char| DIGITS.include?(char) }.join
  end

  def all_chars_valid?
    chars.all? { |char| VALID_PHONE_NUMBER_CHARS.include?(char) }
  end

  def first_digit
    chars.find { |char| DIGITS.include?(char) }
  end
end

class TenDigitFoneNumber < FoneNumber
  def clean
    just_digits
  end

  def valid?
    valid_area_code? && valid_exchange_code? && all_chars_valid?
  end

  def exchange_code
    just_digits[3]
  end

  def area_code
    just_digits[0]
  end
end

class ElevenDigitFoneNumber < FoneNumber
  def clean
    just_digits[1..-1]
  end

  def valid?
    valid_area_code? && valid_exchange_code? && all_chars_valid? &&
      valid_first_digit?
  end

  def exchange_code
    just_digits[4]
  end

  def area_code
    just_digits[1]
  end

  def valid_first_digit?
    first_digit == '1'
  end
end

module BookKeeping
  VERSION = 2
end
