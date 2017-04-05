require 'pry'

# NEXT STEP: replace everything that's not a letter with a space!!!!

class Phrase
  attr_reader :word_string, :clean_word_string

  def initialize(word_string)
    @word_string = word_string
    delimiter == " " ? @clean_word_string = word_string : @clean_word_string = clean
  end

  def word_count
    counts = Hash.new
    clean_word_string.split(' ').each do |word|
      counts[word] ? counts[word] += 1 : counts[word] = 1
    end
    counts
  end

  private

  def clean
    if delimiter == ","
      word_string.gsub(",", " ")
    else
      word_string
    end
  end

  def delimiter
    if word_string.include?(" ")
      " "
    elsif word_string.include?(",")
      ","
    else
      nil
    end
  end
end
