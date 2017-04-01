module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(birthdate)
    birthdate + 1000000000
  end
end
