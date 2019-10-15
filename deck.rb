# Create a deck of cards that can deal up to 5 cards for poker.

# Cards - suit (diamond, hearts, cloves, and spades) and value (A, 2 - 10, J, Q, K)
# Decks - 52 cards, each value has one of each suit

class Card
  attr_accessor :suit, :value
  def initialize
    @suit = ""
    @value = ""
  end
end

class Deck < Card
  attr_reader :cards
  def initialize
    @cards = []
    generate_cards
  end

  def generate_cards
    suits = ["diamond", "hearts", "clubs", "spades"]
    values = ["A", *(2..10), "J", "Q", "K"]

    suits.each do |suit|
      values.each do |value|
        card = Card.new
        card.suit = suit
        card.value = value
        @cards << card
      end
    end
  end

  def deal_cards(number)
    @cards.sample(number)
  end

end

# card = Card.new
# puts card

deck = Deck.new
deck.deal_cards(3).each do |card|
  puts card.value
  puts card.suit
end
