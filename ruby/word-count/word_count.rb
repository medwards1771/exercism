require 'pry'

class Phrase
  attr_reader :word_string, :clean_word_string

  def initialize(word_string)
    @word_string = word_string
    @clean_word_string = clean
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
    word_string.downcase.gsub(/\W+/, ' ').rstrip
  end
end
