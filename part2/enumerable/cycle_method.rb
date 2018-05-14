class PlayingCard
  SUITS = %w(clubs diamonds hearts spades)
  RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)

  class Card
    attr_reader :suit, :rank
    def initialize(attributes = {})
      @suit = attributes[:suit]
      @rank = attributes[:rank].to_i != 0 ? attributes[:rank].to_i : attributes[:rank]
    end
  end

  class Deck
    # attr_reader :cards
    def initialize(n=1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << Card.new(suit: s, rank: r)
        end
      end
    end

    def cards
      @cards.to_enum
    end
  end

end

deck_of_cards = PlayingCard::Deck.new
p deck_of_cards.cards

deck_of_cards.cards << "JOKER!!"
p deck_of_cards.cards

# deck_of_cards.cards.each do |card|
#   puts "#{card.rank} of #{card.suit}"
# end

groups = deck_of_cards.cards.group_by do |card|
  card.suit
end
