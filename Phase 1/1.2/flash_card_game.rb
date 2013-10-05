
class Game
  attr_reader :deck

  def initialize
    @deck = []
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!"
  end

  def parse_file(file)
    @new_deck
    file = File.open(file, 'r')
     # puts file.read
    file.each_line do |line|
      @deck << line
    end
    @deck.keep_if{|x| x=~ /[a-z]/}
    @deck.each_slice(2) {|x|
       @new_deck << x
    }
    p @new_deck
    # deck << FlashCard.new(row)
  end


end

class FlashCard
  attr_reader :term, :definition

  def initialize(term, definition)
    @term = term
    @definition = definition
  end

end

class Controller

  def check_user_input
  end

  def confirm_input_as_correct
  end

end





test_game = Game.new
test_game.parse_file('flashcard_samples.txt')
