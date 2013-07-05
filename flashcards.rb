
require_relative 'flashcards_view'
require_relative 'flashcard_model'


class Game

  include Flashcards_view

  def initialize
    @card_deck = FlashcardModel.new
    @current_card = get_card
  end

  def get_card
    @card_deck.send_flashcard
  end

  def check_answer(guess)
    current_card.term == guess ? true : false
  end

end

if ARGV[0] == "play"
  game = Game.new
  game.game_loop
end



# Controller:

# get_card
# correct?
# send_definition_to_view
# do answer checking


# Controller = "game"

# View

