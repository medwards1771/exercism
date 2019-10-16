def score(letter)
  new_system = transform_old_system_into_new_system
  new_system[letter]
end

def transform_old_system_into_new_system
  new_system = {}
  old_system.each do |score, letters|
    letters.each do |letter|
      new_system[letter.downcase] = score
    end
  end
  new_system
end

def old_system
  {
    1 => %w[A E I O U L N R S T],
    2 => %w[D G],
    3 => %w[B C M P],
    4 => %w[F H V W Y],
    5 => %w[K],
    8 => %w[J X],
    10 => %w[Q Z]
  }
end
