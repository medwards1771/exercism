# WTF are first principles

module Binary
  def to_decimal(number)
    raise ArgumentError, 'You can only pass 0s and 1s' if number[/[^0-1]/]
    places = number.size - 1
    exponents = (0..places).to_a.reverse
    factors =  number.chars
    hash = exponents.zip(factors).to_h
    sum = 0
    hash.each { |k, v| sum += v.to_i * 2**k }
    sum
  end
end

Binary.extend Binary

module BookKeeping
  VERSION = 3
end
