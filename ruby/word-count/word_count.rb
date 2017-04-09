class Phrase
  def initialize(word_string)
    @word_string = word_string
  end

  def word_count
    grouped_words = clean_words.group_by { |word| word }
    grouped_words.map do |word, appearances|
      grouped_words[word] = appearances.size
    end
    grouped_words
  end

  private

  attr_reader :word_string

  def clean_words
    clean_string.split.map do |word|
      if word[0] == "'" && word[-1] == "'"
        remove_single_quotes(word)
      else
        word
      end
    end
  end

  def clean_string
    word_string.downcase.gsub(/[^a-z0-9'\s]/, ' ')
  end

  def remove_single_quotes(string)
    string.delete("'")
  end
end

module BookKeeping
  VERSION = 1
end
