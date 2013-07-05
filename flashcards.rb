
require_relative 'flashcards_view'


class Game

  include 'flashcards_view'

  def initialize
    @card_deck = FlashcardModel.new
    
  end

  def get_card
    @card_deck.send_flashcard
  end

  def check_answer(guess)
    
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

