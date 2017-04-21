module RunLengthEncoding
  def encode(expanded_chars)
    collapsed_chars = ''
    until expanded_chars.empty?
      counts = divide_and_conquer(expanded_chars)
      char_count = counts[:char_count]
      char = counts[:char]
      char_count = '' if char_count == 1
      collapsed_chars += "#{char_count}#{char}"
    end
    collapsed_chars
  end

  def decode(collapsed_chars)
    expanded_chars = ''
    until collapsed_chars.empty?
      char_count = ''
      char_count << collapsed_chars.slice!(0) while /\d+/ =~ collapsed_chars[0]
      char = collapsed_chars[0]
      char_count = 1 if char_count.empty?
      collapsed_chars.slice!(0)
      expanded_chars += char * char_count.to_i
    end
    expanded_chars
  end

  private

  def divide_and_conquer(expanded_chars)
    char_count = 0
    char = expanded_chars[0]
    while expanded_chars.chr == char
      char_count += 1
      expanded_chars.slice!(0)
    end
    { char_count: char_count, char: char }
  end
end

RunLengthEncoding.extend RunLengthEncoding
module BookKeeping
  VERSION = 2
end
