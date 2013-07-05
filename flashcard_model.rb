class FlashcardModel

  def initialize
    @all_flashcards = []

    card_array = []
    card_file = File.open('flashcard_samples.txt', 'r')
    card_file.each_line do |line|
      if line != "\n"
        card_array << line.chomp
      end
    end
    @card_pairs = card_array.each_slice(2).to_a

    populate_flashcards
  end

  def populate_flashcards
    @card_pairs.each do |pair|
      @all_flashcards << Flashcard.new(pair[1], pair[0])
    end
  end

  def send_flashcard
    @all_flashcards.sample
  end
end


class Flashcard
  attr_reader :term, :definition

  def initialize(term, definition)
    @term = term
    @definition = definition
  end
end