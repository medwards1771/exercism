class Phrase
  def initialize(word_string)
    @word_string = word_string
  end

  def word_count
    Hash.new(0).tap { |h| clean_string.split.each { |word| h[word] += 1 } }
  end

  private

  attr_reader :word_string

  def clean_string
    half_clean_string = word_string.downcase.gsub(/[^a-z0-9'\s]/, ' ')
    half_clean_string.gsub(" '", ' ').gsub("' ", ' ')
  end
end

module BookKeeping
  VERSION = 1
end
