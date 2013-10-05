require_relative 'flashcards.rb'

class Game

  attr_reader :deck

  def initialize(file)
    @deck = MakeDeck.create_deck(file)
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!"
    play_game
  end

  def draw_new_card
   @deck.sample
  end

  def play_game   
        card = draw_new_card 
    while true

      puts "Definition:"
      puts card.definition
      user_input = gets.chomp
      
      break if user_input == "BLAMMO"
      
      if card.is_true?(user_input) 
        puts "YAYYYYY!!!!!!!!!"
        card = draw_new_card
      else
        puts "Incorrect! Try again."
      end
    end
  end
end

Game.new('flashcard_samples.txt')


# Main file for 

module MakeDeck
  def self.create_deck(file)
    array_of_file_data = parse_file(file)   
    create_deck_of_flashcards(array_of_file_data)
  end

  def self.deck
    @deck
  end

  def self.parse_file(file)
    file_lines = []
    File.open(file, 'r').each_line do |line|
      file_lines << line unless line == "\n"
    end
    populate_nested_array(file_lines)
  end

  def self.populate_nested_array(file_lines)
    flash_card_list = []
    file_lines.each_slice(2) do |sub_array|
      flash_card_list << {definition: sub_array[0], term: sub_array[1]}
    end
    flash_card_list
  end

  def self.create_deck_of_flashcards(array_of_file_line_hashes)
    deck = []
    array_of_file_line_hashes.each do |file_line_hash|
      deck << FlashCard.new(file_line_hash)
    end
    deck
  end
end

class FlashCard
  attr_reader :term, :definition

  def initialize(hash_of_args)
    @term = hash_of_args[:term]
    @definition = hash_of_args[:definition]
  end

  def is_true?(user_input)
    #puts user_input
    #puts term
    term.chomp == user_input
  end

end
