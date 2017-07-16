class Acronym
  def self.abbreviate(phrase)
    words = phrase.split(' ').map do |word|
      word.include?('-') ? word.split('-') : word
    end
    words.flatten.map { |word| word[0].capitalize }.join
  end
end

module BookKeeping
  VERSION = 4
end
