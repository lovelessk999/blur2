class Card
  attr_accessor :rank, :suit
 
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
 
  def output_card
    puts " ________"
    puts "|#{@rank}      #{@suit}|"
    puts "|        |"
    puts "|        |"
    puts "|        |"
    puts "|        |"
    puts "|#{@suit}     #{@rank} |"
    puts "|________|"
  end
end
 
class Deck
  def initialize
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
    @suits = ['♣', '♥', '♠', '♦']
    @cards = []
 
    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  
  @cards.shuffle!
  end
 
  def deal (number)
    number.times {@cards.shift.output_card}
  end
end
 
deck = Deck.new
# deck.deal(52)
# deck deal test

