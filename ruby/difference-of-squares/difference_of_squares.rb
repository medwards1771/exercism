class Squares
  def initialize(number)
    @number = number
  end

  def difference
    return 0 if number.zero?
    square_of_sum - sum_of_squares
  end

  def square_of_sum
    (1..number).inject(0, :+)**2
  end

  def sum_of_squares
    (1..number).inject(0) { |sum, n| sum + (n**2) }
  end

  private

  attr_reader :number
end

module BookKeeping
  VERSION = 3
end
