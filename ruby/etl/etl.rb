LETTER_TO_SCORE_MAP = {
  'a' => 1,
  'b' => 3,
  'c' => 3,
  'd' => 2,
  'e' => 1,
  'f' => 4,
  'g' => 2,
  'h' => 4
}.freeze

def score(letter)
  LETTER_TO_SCORE_MAP[letter]
end
