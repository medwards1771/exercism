module Accumulate
  def accumulate(&block)
    output = []
    each { |e| out << yield(e) }
    output
  end
end

Array.include Accumulate
