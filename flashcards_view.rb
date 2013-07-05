require_relative "flashcards.rb"

module flashcards_view
 
  def game_loop

    puts "Welcome to Ruby Flashcards Against Humanity."
    puts "To play, just enter the correct term for each definition. To quit the game, type \"exit\""
    puts "Ready? Go!"

    correct_responses = ["You rock!", "Correct-amundo!", "Fabulous!"]
    incorrect_responses = ["Wrong!", "Not really....", "Maybe you shouldn't quit your day job..."]

    card = get_card


    guess = gets.chomp

    until guess == "exit"

      if check_answer(guess) == true
        puts correct_responses.sample
        card = get_card
        guess = gets.chomp
      else
        puts incorrect_responses.sample
        guess == gets.chomp
      end

    end
  end

end