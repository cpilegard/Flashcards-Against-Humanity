require_relative "flashcards.rb"

puts "Welcome to Ruby Flashcards Against Humanity."
puts "To play, just enter the correct term for each definition. To quit the game, type \"exit\""
puts "Ready? Go!"

correct_responses = ["You rock!", "Correct-amundo!", "Fabulous!"]
incorrect_responses = ["Wrong!", "Not really....", "Maybe you shouldn't quit your day job..."]

puts @definition


guess = gets.chomp

until guess == "exit"

  if guess.check_answer == true
    puts correct_responses.sample
    puts card.new_definition
    guess = gets.chomp
  else
    puts incorrect_responses.sample
    guess == gets.chomp
  end

end
