class Deck
  attr_accessor :deck
  def initialize
    @deck = create_deck
  end

  def create_deck
    card_options = ["1","2","3","4","5","6","7","8","9","J","Q","K","A"]
    suit_options = ["Hearts", "Diamonds", "Spades", "Clubs"]
    deck = []
    suit_options.each do |suit|
      card_options.each do |value|
        deck << "#{value} of #{suit}"
      end
    end
    deck
  end
end
