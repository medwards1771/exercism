class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    Hash.new(0).tap { |h| clean.split.each { |word| h[word] += 1 } }
  end

  private

  attr_reader :phrase

  def clean
    half_clean = phrase.downcase.gsub(/[^a-z0-9'\s]/, ' ')
    half_clean.gsub(" '", ' ').gsub("' ", ' ')
  end
end

module BookKeeping
  VERSION = 1
end
