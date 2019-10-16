def score(letter)
  every_letter_and_their_scores = transform_every_score_and_their_letters
  every_letter_and_their_scores[letter]
end

def transform_every_score_and_their_letters
  every_letter_and_their_scores = {}
  every_score_and_their_letters.each do |score, letters|
    letters.each do |letter|
      every_letter_and_their_scores[letter.downcase] = score
    end
  end
  every_letter_and_their_scores
end

def every_score_and_their_letters
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
