require 'minitest/autorun'
require './app/player'

class PlayerTest < Minitest::Test
  def test_can_parse_high_cards
    player = Player.new("Amber")
    values = player.parse_scores(["9 of Hearts", "J of Diamonds"])
    assert_equal ["9","10"], values
  end

  def test_score_can_sum_values
    player = Player.new("Amber")
    player.add_cards_to_hand("9 of Hearts")
    player.add_cards_to_hand("J of Diamonds")
    assert_equal 19, player.score
  end

  def test_can_hit
    
  end

end
