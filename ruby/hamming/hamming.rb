class Hamming
  def self.compute(first_string, second_string)
    raise ArgumentError if first_string.length != second_string.length
    difference = 0
    while first_string != ''
      difference +=1 if first_string.slice!(0) != second_string.slice!(0)
    end
    difference
  end
end

module BookKeeping
  VERSION = 3
end
