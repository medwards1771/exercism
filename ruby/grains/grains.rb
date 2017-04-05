class Grains
  class << self
    def square(x)
      raise ArgumentError if (x > 64 || [-1, 0].include?(x))
      grains = 1
      (x-1).times{ grains += grains }
      grains
    end

    def total
      (1..64).inject{ |sum, x| sum + square(x)}
    end
  end
end

module BookKeeping
  VERSION = 1
end
