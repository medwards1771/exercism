class Year
  class << self
    def leap?(year)
      if year % 400 == 0
        true
      else
        year % 4 == 0 && year % 100 != 0
      end
    end
  end
end

module BookKeeping
  VERSION = 2
end
