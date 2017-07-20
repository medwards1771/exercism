class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select do |w|
      (w.downcase.chars.sort == word.chars.sort) &&
        (w.downcase.chars != word.chars)
    end
  end
end

module BookKeeping
  VERSION = 2
end
