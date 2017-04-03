# Questions
# 1. when do you know when the transformation from fixnum to roman numeral is complete??
  # depends on how big the number is

class Fixnum
  def to_roman
    answer = "I" * self
    answer = answer.gsub("IIIII", "V") if self > 4
    answer = answer.gsub("VV", "X") if self > 9
    answer = answer.gsub("XXXXX", "L") if self > 49
    answer = answer.gsub("LL", "C") if self > 99
    answer = answer.gsub("CCCCC", "D") if self > 499
    answer = answer.gsub("DD", "M") if self > 999

    answer = answer.gsub("IIII", "IV") if answer.include?("IIII") # 4 is 1 less than 5
    answer = answer.gsub("VIV", "IX") if answer.include?("VIV") # 9 is 1 less than 10
    answer = answer.gsub("XXXX", "XL") if answer.include?("XXXX") # 40 is 10 less than 50
    answer = answer.gsub("LXL","XC") if answer.include?("LXL") # 90 is 10 less than 100
    answer = answer.gsub("CCCC", "CD") if answer.include?("CCCC") # 400 is 100 less than 500
    answer = answer.gsub("DCD", "CM") if answer.include?("DCD") # 900 is 100 less than 1000

    answer
  end
end

module BookKeeping
  VERSION = 2
end
