require 'prime'

class Prime
  class << self
    def nth(n)
      raise ArgumentError if n.zero?
      first(n).last
    end
  end
end

module BookKeeping
  VERSION = 1
end
