# WTF are first principles

module Binary
  # So: `101 => 1*2^2 + 0*2^1 + 1*2^0 => 1*4 + 0*2 + 1*1 => 4 + 1 => 5 base 10`.
  def to_decimal(number)
    places = number.size - 1
    sum = 0
    p exponents = (0..places).to_a.reverse
    p factors =  number.chars
    p hash = exponents.zip(factors).to_h
    # {1=>"1", 0=>"0"}
    hash.inject(0) { |k,v| }
    # pretend.each do |x|
    #   p number.chars.map { |n| n.to_i * 2**x }
    # end

    # p "test_array: #{test}"
    # test.inject(0) { |sum, n| sum + n }
  end
end

Binary.extend Binary
