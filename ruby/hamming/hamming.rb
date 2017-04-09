class Hamming
  def self.compute(strand1, strand2)
    unless strand1.length == strand2.length
      raise ArgumentError, 'Strands must be of equal length'
    end

    strand1.each_char.with_index.count do |_, i|
      strand1[i] != strand2[i]
    end
  end
end

module BookKeeping
  VERSION = 3
end
