class Complement
  def self.of_dna(nucleotide_string)
    return '' if contaminated(nucleotide_string)
    nucleotide_string.chars.map do |char|
      get_complementary_nuke(char)
    end.join
  end

  def self.get_complementary_nuke(nucleotide)
    if nucleotide == 'G'
      'C'
    elsif nucleotide == 'C'
      'G'
    elsif nucleotide == 'T'
      'A'
    elsif nucleotide == 'A'
      'U'
    end
  end

  def self.contaminated(string)
    clean_string = string.chars.select do |char|
      %w[G C T A].include?(char)
    end.join
    clean_string != string
  end
end

module BookKeeping
  VERSION = 4
end
