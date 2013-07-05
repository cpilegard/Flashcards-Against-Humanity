
module Flashcards_view
 
  def game_loop

    puts "Welcome to Ruby Flashcards Against Humanity."
    puts "To play, just enter the correct term for each definition. To quit the game, type \"exit\""
    puts "Ready? Go!"

    correct_responses = ["Good enough, for now...", "The bigger they are...", "Took you long enough.", "As far as bare minimums go.", "Eh...",
                          "Way to aim for the middle.", "Fucking NERD!", "Guess I won't be getting fries with that, yet..."]
    incorrect_responses = ["Wow, I feel bad for your parents.", "Abortion: this is why.", 
                          "What's it like failing out of clown college?", "Please DON'T donate your brain to science.", "You gave me cancer.", 
                          "Please let there be an asteroid on the way.", "Dead kittens", 
                          "You just made an old woman commit suicide.", "Are you being serious?"]

    card = get_card

    p card.definition

    guess = ''
    guess = $stdin.gets.chomp

    until guess == "exit"

      if check_answer(guess) == true
        puts correct_responses.sample
        card = get_card
        puts card.definition
        guess = $stdin.gets.chomp
      else
        puts incorrect_responses.sample
        guess = $stdin.gets.chomp
      end

    end
  end

end
