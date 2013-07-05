
require_relative 'flashcards_view'
require_relative 'flashcard_model'


class Game

  include FlashcardsView

  def initialize
    @card_deck = FlashcardModel.new
    @current_card = get_card
  end

  def current_card
    
  end

  def get_card
    @current_card = @card_deck.send_flashcard
  end

  def check_answer(guess)
    @current_card.term == guess
  end

end

if ARGV[0] == "play"
  game = Game.new
  game.game_loop
end
