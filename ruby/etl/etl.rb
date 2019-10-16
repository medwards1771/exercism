LETTER_TO_SCORE_MAP = {
  'a' => 1,
  'b' => 3,
  'c' => 3,
  'd' => 2,
  'e' => 1,
  'f' => 4,
  'g' => 2,
  'h' => 4,
  'i' => 1,
  'j' => 8,
  'k' => 5,
  'l' => 1,
  'm' => 3,
  'n' => 1,
  'o' => 1,
  'p' => 3,
  'q' => 10,
  'r' => 1,
  's' => 1,
  't' => 1,
  'u' => 1,
  'v' => 4,
  'w' => 4,
  'x' => 8,
  'y' => 4,
  'z' => 10
}.freeze

def score(letter)
  LETTER_TO_SCORE_MAP[letter]
  new_system = transform_old_system_into_new_system
  new_system[letter]
end


def transform_old_system_into_new_system
  # make a new empty hash
  new_system = {}
  # iterate over the old system with k,v
  old_system.each do |score, letters|
    # iterate over the v which will be letters
    letters.each do |letter|
      # downcase each letter
      # make each letter a key in the new hash
      # assign the key's value to the k
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
