require_relative 'deck'
class Player
  attr_accessor :deck
  def initialize(name)
    @name = name
    @hand = []
    @deck = Deck.new.deck
  end

  def add_cards_to_hand(cards)
    @hand.push(cards)
  end

  def cards
    @hand
  end

  def score
    cards = parse_scores(@hand)
    cards.inject(0){|sum, card| card.to_i + sum}
  end

  def parse_scores(cards)
    high_cards = ["J", "Q", "K", "A"]
    values = cards.map{|card| card.split(" ")[0]}
    values.each do |card|
      high_cards.each do |high_card|
        card.gsub!(high_card, "10")
      end
    end
    values
  end

  # def hit
  #   hand = @deck.sample(1)
  #   hand.each do |card|
  #     # inserts them into player's hand
  #     add_cards_to_hand(card)
  #     # removes them from available deck
  #     @deck.delete(card)
  #   end
  # end
end
