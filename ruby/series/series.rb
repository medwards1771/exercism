class Series
  attr_reader :number_chain

  def initialize(number_chain)
    @number_chain = number_chain
  end

  def slices(x)
    mutable_chain = number_chain
    raise ArgumentError if x > number_chain.length
    slices = []
    while mutable_chain.length >= x
      index = 0
      unit = ''
      until unit.length == x
        unit << mutable_chain[index]
        index += 1
      end
      slices << unit
      mutable_chain = mutable_chain[1..-1]
      # mutable_chain.slice!(0) !! Why does this alter number_chain and cause
      # test_sequential_slices to fail? So confused.
    end

    slices

    # always begin with the first character in the number_chain
    # save a variable called unit which will store each series
    # start with the first character, put that char in the unit, and continue 'x'
    # number of times until x == x
    # now the var unit contains the complete series -- put that unit in an array
    # no need to store the unit after it's been put in the array
    # i believe now we can go to the next char in the number chain and repeat what we
    # did before
    # slices = []
    # # try iterating over number_chain and grabbing chars from
    # number_chain.each_char.with_index do |char, index|
    #   #the problem here is that we only have access to the char
    #   #we're iterating on
    #   unit = ''
    #   x.times do
    #     unit << char
    #     char = number_chain[index + 1]
    #   end
    #   slices << unit
    # end
    # slices
  end
end
