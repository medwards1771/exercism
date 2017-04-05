require 'prime'

class Prime
  class << self
    def nth(n)
      raise ArgumentError if n == 0
      first(n).last
    end
  end
end

module BookKeeping
  VERSION = 1
end
