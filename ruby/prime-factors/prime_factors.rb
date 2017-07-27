require 'Prime'

class PrimeFactors
  def self.for(num)
    factors = []
    recurse(num, num, factors)
  end

  private

  def self.recurse(num, desired, factors)
    first_x_primes(num).each do |prime|
      if factors.inject(:*) == desired
        return factors
      elsif num % prime == 0
        factors << prime
        num = num / prime
        self.recurse(num, desired, factors)
      end
    end
    factors
    # num == 6
    # look at first prime (2)
    # is the num % first prime == 0 ?
    # if yes, then save the first prime in factors
      # also! grab the other factor, num / 2 == 3
      # now that you have the 3, go back to line 14
    # if no, move to the second prime (3)

    # is the num % second prime == 0 ?
    # if yes, save the second prime in factors
      # also! grab the other factor, num / 3 == 1
      # now that you have the 1, go back to line 14
    # if no, move to the third prime (5)
  end

  def self.first_x_primes(x)
    if x <= 625
      Prime.first(3)
    else
      Prime.first(200000)
    end
  end
end
