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
    answer2 = answer.gsub("LXL","XC")
    answer3 = answer2.gsub("CCCC", "CD")
    answer4 = answer3.gsub("DCD", "CM")
    if answer4.include?("VIIII")
      answer5 = answer4.gsub("VIIII", "IX")
    elsif
      answer5 = answer4.gsub("IIII", "IV")
    else
      answer5 = answer4
    end
    answer5
  end
end

module BookKeeping
  VERSION = 2
end
