require 'minitest/autorun'
require_relative 'etl'

class EtlTest < Minitest::Test
  def test_how_many_points_an_a_is_worth
    letter = "a"
    assert_equal score(letter), 1
  end

  def test_how_many_points_a_b_is_worth
    letter = "b"
    assert_equal score(letter), 3
  end
end
