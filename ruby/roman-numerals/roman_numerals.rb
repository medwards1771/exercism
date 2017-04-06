#   Questions
#   1. when do you know when the transformation from fixnum to roman numeral is
#   complete??
#   depends on how big the number is

class Integer
  def to_roman
    answer = 'I' * self
    answer = answer.gsub('IIIII', 'V').gsub('VV', 'X').gsub('XXXXX', 'L')
    answer = answer.gsub('LL', 'C').gsub('CCCCC', 'D').gsub('DD', 'M')

    answer = answer.gsub('IIII', 'IV').gsub('VIV', 'IX').gsub('XXXX', 'XL')
    answer.gsub('LXL', 'XC').gsub('CCCC', 'CD').gsub('DCD', 'CM')
  end
end

module BookKeeping
  VERSION = 2
end
