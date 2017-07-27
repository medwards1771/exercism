class Trinary
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 unless number.chars.all? { |c| c.match(/[0-2]/) }

    number.chars.reverse.map.with_index do |n, i|
      n.to_i * 3**i
    end.reduce(:+)
  end
end

module BookKeeping
  VERSION = 1
end
