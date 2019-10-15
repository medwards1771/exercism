require 'minitest/autorun'
require_relative 'etl'

class EtlTest < Minitest::Test
  def test_how_many_points_a_is_worth
    letter = "a"
    assert_equal score(letter), 1
  end

  def test_how_many_points_f_is_worth
    letter = "f"
    assert_equal score(letter), 4
  end
end
