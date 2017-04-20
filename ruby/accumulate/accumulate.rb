module Accumulate
  def accumulate(*)
    output = []
    each { |x| output << yield(x) }
    output
  end
end

Array.include Accumulate

module BookKeeping
  VERSION = 1
end
