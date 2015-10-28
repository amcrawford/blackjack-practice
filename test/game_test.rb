require 'minitest/autorun'
require './app/game'

class GameTest < Minitest::Test

  def test_game_is_initialized_with_deck
    player = Player.new("Amber")
    game = Game.new(player)
    assert_equal ["1 of Hearts", "2 of Hearts", "3 of Hearts", "4 of Hearts", "5 of Hearts", "6 of Hearts", "7 of Hearts", "8 of Hearts", "9 of Hearts", "J of Hearts", "Q of Hearts", "K of Hearts", "A of Hearts", "1 of Diamonds", "2 of Diamonds", "3 of Diamonds", "4 of Diamonds", "5 of Diamonds", "6 of Diamonds", "7 of Diamonds", "8 of Diamonds", "9 of Diamonds", "J of Diamonds", "Q of Diamonds", "K of Diamonds", "A of Diamonds", "1 of Spades", "2 of Spades", "3 of Spades", "4 of Spades", "5 of Spades", "6 of Spades", "7 of Spades", "8 of Spades", "9 of Spades", "J of Spades", "Q of Spades", "K of Spades", "A of Spades", "1 of Clubs", "2 of Clubs", "3 of Clubs", "4 of Clubs", "5 of Clubs", "6 of Clubs", "7 of Clubs", "8 of Clubs", "9 of Clubs", "J of Clubs", "Q of Clubs", "K of Clubs", "A of Clubs"],
                  game.deck
  end

  def test_deal_assigns_cards_to_players_hand
    player = Player.new("Amber")
    game = Game.new(player)
    game.deal
    assert_equal 2, player.cards.count
  end

  def test_deal_removes_options_from_deck
    player = Player.new("Amber")
    game = Game.new(player)
    game.deal
    assert_equal 50, game.deck.count
  end
end
