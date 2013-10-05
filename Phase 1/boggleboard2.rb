class BoggleBoard
  def initialize
    
    @board = [[nil, nil, nil, nil],
              [nil, nil, nil, nil],
              [nil, nil, nil, nil],
              [nil, nil, nil, nil]]
    
    @letters = ('A'..'Z').to_a

    @random_die = (1 .. 16).to_a.sample(16)

    @die = {
              1 =>     %w(A A E E G N),
              2 =>     %w(E L R T T Y),
              3 =>     %w(A O O T T W),
              4 =>     %w(A B B J O O),
              5 =>     %w(E H R T V W),
              6 =>     %w(C I M O T U),
              7 =>     %w(D I S T T Y),
              8 =>     %w(E I O S S T),
              9 =>     %w(D E L R V Y),
              10 =>    %w(A C H O P S),
              11 =>    %w(H I M N Q U),
              12 =>    %w(E E I N S U),
              13 =>    %w(E E G H N W),
              14 =>    %w(A F F K P S),
              15 =>    %w(H L N N R Z),
              16 =>    %w(D E I L R X)      
          }

  end
  
  def shake!
    @board.each do |x|
      x.map! do |y|
        y = @die.values_at(@random_die.sample).sample.sample
        if y == "Q"
          y = "Qu"
        else
          y
        end
      end
    end
    p @board
    # @board.each {|row| p row.join(" ")}
  end

  def to_s
    "omg what is this? try printing me."
  end

  def include?(word)
    word.upcase!
    @board.each {|row| p row.index(word[0])}
    p "Index: {letter_index}"
    if letter_index == nil
      false 
    else
      @board[letter_index] = nil
      include?(word[1..-1])
      @board
    end
  end


end

game = BoggleBoard.new
game.shake!
