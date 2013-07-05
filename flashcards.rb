
require_relative 'flashcards_view'


class Game

  include 'flashcards_view'

  def initialize
    @card_deck = FlashcardModel.new
    
  end

  def get_card

  end

  def check_answer
    
  end



end






# Controller:

# get_card
# correct?
# send_definition_to_view
# do answer checking


# Controller = "game"

# View

