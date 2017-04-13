module RunLengthEncoding
  # Starting from the left most char of the string, record what char that is
  # (ie "W") and move on to the next char in the string. If the next char is
  # the same as the one before it,

  # you can either go forward or go backward!

  def encode(input)
    i = 0 # set index to zero
    string = '' # declare an empty string
    while i < input.length # initiate a loop that ends at the last character of the input string
      char = input[i] # assign char to the first character, then the second character, etc
      answer = method(char, input, i, string) # send char (varies), input string, index, and empty string to method
      # why does method need an empty string? it doesn't.
      i = answer[:index] # retrieve the index from the hash passed by #method
      string = answer[:string] #retrieve the string from the hash passed by #method
      # okay so know i at least see a reason for passing string to method since it changes from ''
    end
    answer[:string] #return the final string passed by #method as the final answer.
  end

  def method(char, input, index, string) # takes 4 values as parameters
    dummy = input # stores input string as local var 'dummy'
    char = dummy[index] # assigns char to the given index
    # so we don't need to pass char I believe ...
    char_count = 0 # set char_count to zero. essentially fxns as a timer
    until dummy[index] != char # initiates a loop that ends when char no longer repeats itself in the string
      char_count += 1 # increments the counter
      index += 1 # increments the index
    end
    char_count = '' if char_count == 1 # don't show the char_count in the string if it's 1
    string += "#{char_count}#{char}" # build the response string by adding stuff like "12W"
    { string: string, index: index } # return a hash with the string in its current form and the current index
  end

  def decode(input)
    answer = ''
    dummy = input
    until dummy.empty?
      response = another_method(dummy)
      dummy = response[:input_left]
      answer << response[:answer]
    end
    answer
  end

  def another_method(input)
    count = ''
    dummy = input
    count << dummy.slice!(0) while /\d+/ =~ (dummy[0])
    char = dummy[0]
    count = 1 if count.empty?
    dummy.slice!(0)
    answer = char * count.to_i
    { answer: answer, input_left: dummy }
  end
end

RunLengthEncoding.extend RunLengthEncoding
module BookKeeping
  VERSION = 2
end
