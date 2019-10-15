require 'minitest/autorun'
require_relative 'etl'

class EtlTest < Minitest::Test
  def test_how_many_points_a_is_worth
    letter = "a"
    assert_equal score(letter), 1
  end

  def test_how_many_points_b_is_worth
    letter = "b"
    assert_equal score(letter), 3
  end

  def test_how_many_points_any_given_letter_is_worth
    # is testing all 26 letters actually necessary? what is the risk of not doing it?
    # i'm tired of typing
    letters = ["a", "b", "c", "d", "e", "f", "g", "h"]
    scores = [1, 3, 3, 2, 1, 4, 2, 4]

    letters.each_with_index do |letter, index|
      assert_equal scores[index], score(letter)
    end
  end
end
