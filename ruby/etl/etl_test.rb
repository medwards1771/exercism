require 'minitest/autorun'
require_relative 'etl'

class EtlTest < Minitest::Test
  def test_how_many_points_an_a_is_worth
    assert_equal "a", 1
  end
end
