require 'minitest/autorun'
require_relative 'etl'
require_relative 'fixtures'

class EtlTest < Minitest::Test
  def test_how_many_points_a_is_worth
    letter = "a"
    assert_equal score(letter), 1
  end

  def test_how_many_points_f_is_worth
    letter = "f"
    assert_equal score(letter), 4
  end

  def test_letter_to_score_map
    # for posterity
    assert_equal LETTER_TO_SCORE_MAP, LETTER_TO_SCORE_MAP_FIXTURE
  end
end
