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
    #@board.each {|row| p row.join(" ")}
    @board
  end

  # def to_s
  #   "omg what is this? try printing me."
  # end

  def adjacents(n)
    if n == 1; return [2,5,6]; end
    if n == 2; return [1,5,6,7,3]; end
    if n == 3; return [2,6,7,8,4]; end
    if n == 4; return [3,7,8]; end
    if n == 5; return [1,2,6,10,9]; end
    if n == 6; return [1,2,3,5,7,9,10,11]; end
    if n == 7; return [2,3,4,6,8,10,11,12]; end
    if n == 8; return [3,4,7,11,12]; end
    if n == 9; return [5,6,10,13,14]; end
    if n == 10; return [5,6,7,9,11,13,14,15]; end
    if n == 11; return [6,7,8,10,12,14,15,16]; end
    if n == 12; return [7,8,11,15,16]; end
    if n == 13; return [9,10,14]; end
    if n == 14; return [9,10,11,13,15]; end
    if n == 15; return [10,11,12,14,16]; end
    if n == 16; return [11,12,15]; end
  end
 @counter = 0
  def include?(word)
    @board.flatten!
    if word.length == 0
      return true
    end
    
    word.upcase!
    p "Word[0]: #{word[0]}"
    letter_index = @board.index(word[0])
    p "Index: #{letter_index}"
    unless letter_index == nil
      adj = adjacents(letter_index+1)
    end
    if @counter == 0
      @previous_index = 1
      adj = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
    end
    p "Adjacents: #{adj}"
    p "Counter: #{@counter}"
    if  letter_index == nil
      return false
    elsif adj.index(@previous_index) == nil
      return false
    else # found letter on board
      @board[letter_index] = ""
      puts "New Board: #{@board}"
      @previous_index = letter_index
      puts "Previous Index: #{@previous_index}"
      @counter += 1
      include?(word[1..-1])
    end
  end
end
 
game = BoggleBoard.new
p game.shake!
p game.include?('cat')
