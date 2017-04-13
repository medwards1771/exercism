module RunLengthEncoding
  # Starting from the left most char of the string, record what char that is
  # (ie "W") and move on to the next char in the string. If the next char is
  # the same as the one before it,

  # you can either go forward or go backward!

  def encode(input)
    i = 0
    string = ''
    while i < input.length
      char = input[i]
      answer = method(char, input, i, string)
      i = answer[:index]
      string = answer[:string]
    end
    answer[:string]
  end

  def method(char, input, index, string)
    dummy = input
    char = dummy[index]
    char_count = 0
    until dummy[index] != char
      char_count += 1
      index += 1
    end
    char_count = '' if char_count == 1
    string += "#{char_count}#{char}"
    { string: string, index: index }
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
