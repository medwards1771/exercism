class Fixnum
  def to_roman
    ones = "I" * self
    fives = ones.gsub("IIIII", "V")
    tens = fives.gsub("VV", "X")
    fifties = tens.gsub("XXXXX", "L")
    hundreds = fifties.gsub("LL", "C")
    five_hundreds = hundreds.gsub("CCCCC", "D")
    thousands = five_hundreds.gsub("DD", "M")

    answer = thousands.gsub("VIIII", "IX") # 9 is 1 less than 10
    answer2 = answer.gsub("IIII", "IV") # 4 is 1 less than 5
    answer3 = answer2.gsub("XXXX", "XL") # 40 is 10 less than 50
    answer4 = answer3.gsub("LXL","XC") # 90 is 10 less than 100
    answer5 = answer4.gsub("CCCC", "CD") # 400 is 100 less than 500
    answer6 = answer5.gsub("DCD", "CM") # 900 is 100 less than 1000
  end
end

module BookKeeping
  VERSION = 2
end
