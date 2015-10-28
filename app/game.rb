require 'pry'
require_relative 'player'

class Game
  attr_reader :deck
  def initialize(player)
    @player = player
    @deck = @player.deck
  end

  def hit
    hand = @deck.sample(1)
    hand.each do |card|
      # inserts them into player's hand
      @player.add_cards_to_hand(card)
      # removes them from available deck
      @deck.delete(card)
    end
  end

  def deal
    # randomly generates two cards for player
    2.times do
      hit
    end
  end
end
#
# game = Game.new("Amber")
# puts game.create_deck
