class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(max)
    test = 2
    nums = []
    until test >= max
      nums << test if multiples.select { |x| (test % x).zero? }.any?
      test += 1
    end
    #optimize. don't add integers to the multiples array that already exist
    nums.uniq.inject(0, :+)
  end
end
