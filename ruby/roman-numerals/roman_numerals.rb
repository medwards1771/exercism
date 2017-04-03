class Fixnum
  def to_roman
    ones = "I" * self
    fives = ones.gsub("IIIII", "V")
    tens = fives.gsub("VV", "X")
    fifties = tens.gsub("XXXXX", "L")
    hundreds = fifties.gsub("LL", "C")
    five_hundreds = hundreds.gsub("CCCCC", "D")
    thousands = five_hundreds.gsub("DD", "M")
    answer = thousands.gsub("XXXX", "XL")
    if answer.include?("VIIII")
      answer2 = answer.gsub("VIIII", "IX")
    elsif
      answer2 = answer.gsub("IIII", "IV")
    else
      answer2 = answer
    end
    answer3 = answer2.gsub("LXL","XC")
    answer4 = answer3.gsub("CCCC", "CD")
    answer5 = answer4.gsub("DCD", "CM")
  end
end

module BookKeeping
  VERSION = 2
end
