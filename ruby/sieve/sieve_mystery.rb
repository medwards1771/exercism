class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    range = (2..number).to_a
    counter = 0
    primes = []
    while range[counter]
      primes = remove_composites(range, range[counter])
      counter += 1
      # how in the hell does the value of the range array change in these iterations??
    end
    primes
  end

  def remove_composites(array, divisor)
    array.each do |x|
      array.delete(x) if x != divisor && x % divisor == 0
    end
  end
end

module BookKeeping
  VERSION = 1
end
