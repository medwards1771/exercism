class Year
  class << self
    def leap?(year)
      if (year % 400).zero?
        true
      else
        (year % 4).zero? && (year % 100).nonzero?
      end
    end
  end
end

module BookKeeping
  VERSION = 2
end
