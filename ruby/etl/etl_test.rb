require 'minitest/autorun'
require_relative 'etl'
require_relative 'fixtures'

class EtlTest < Minitest::Test
  def test_how_many_points_a_is_worth
    letter = "a"
    etl = ETL.new

    assert_equal etl.score(letter), 1
  end

  def test_how_many_points_f_is_worth
    letter = "f"
    etl = ETL.new

    assert_equal etl.score(letter), 4
  end

  def test_letter_to_score_map
    # for posterity
    etl = ETL.new
    assert_equal etl.every_letter_and_their_scores, LETTER_TO_SCORE_MAP_FIXTURE
  end
end
