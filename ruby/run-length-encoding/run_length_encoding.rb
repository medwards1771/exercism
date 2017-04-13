module RunLengthEncoding
  def encode(expanded_chars)
    index = 0
    collapsed_chars = ''
    while index < expanded_chars.length
      char = expanded_chars[index]
      char_count = 0
      until expanded_chars[index] != char
        char_count += 1
        index += 1
      end
      char_count = '' if char_count == 1
      collapsed_chars += "#{char_count}#{char}"
    end
    collapsed_chars
  end

  def decode(collapsed_chars)
    expanded_chars = ''
    until collapsed_chars.empty?
      char_count = ''
      char_count << collapsed_chars.slice!(0) while /\d+/ =~ (collapsed_chars[0])
      char = collapsed_chars[0]
      char_count = 1 if char_count.empty?
      collapsed_chars.slice!(0)
      expanded_chars += char * char_count.to_i
    end
    expanded_chars
  end
end

RunLengthEncoding.extend RunLengthEncoding
module BookKeeping
  VERSION = 2
end
