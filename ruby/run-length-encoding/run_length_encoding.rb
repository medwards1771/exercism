class RunLengthEncoding
  class << self
    def encode(input)
      input.squeeze.each_char.map{ |char| "#{input.count(char)}#{char}" }.join
    end

    def decode(input)

    end
  end
end
