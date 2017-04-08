class Year
  class << self
    def leap?(year)
      (year % 400).zero? || (year % 4).zero? && (year % 100).nonzero?
    end
  end
end

module BookKeeping
  VERSION = 2
end
