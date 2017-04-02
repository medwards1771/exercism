class Pangram
  def self.pangram?(phrase)
    alphabet_letters = ("a".."z").to_a
    clean_phrase = phrase.downcase.tr('^a-z', '')
    clean_phrase.chars.each{ |char| alphabet_letters.delete(char) }
    alphabet_letters == []
  end
end

module BookKeeping
  VERSION = 4
end
