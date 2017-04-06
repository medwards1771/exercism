class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    range = (2..number).to_a
    counter = 0
    while range[counter]
      range = remove_composites(range, range[counter])
      counter += 1
    end
    range
  end

  def remove_composites(array, divisor)
    array.each do |x|
      array.delete(x) if x != divisor && (x % divisor).zero?
    end
  end
end

module BookKeeping
  VERSION = 1
end
