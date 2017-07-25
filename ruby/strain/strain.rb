class Array
  def keep(&block)
    i = 0
    new_array = []
    while i < self.length
      if yield self[i]
        new_array.push self[i]
      end
      i += 1
    end
    new_array
  end

  def discard
    i = 0
    new_array = []
    while i < self.length
      unless yield self[i]
        new_array.push self[i]
      end
      i += 1
    end
    new_array
  end
end
