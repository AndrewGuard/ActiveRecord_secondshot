class Cell
  attr_accessor :value

  def initialize(value)
    @value = value
  end

end

class Sudoku
 
  def initialize(board_string)
    @board_string = board_string
  end
 
  def board_row
    @board_row = @board_string.split(//).each_slice(9).to_a
    p @board_row
  end

  def convert_to_cell_objects
    @board_row.each_index do |row|
      @board_row[row].each_index do |col|
        @board_row[row][col] = Cell.new(@board_row[row][col])#.to_i)
      end
    end
  end
 
  def board_column
    @board_column = @board_row[0].zip(@board_row[1],@board_row[2],@board_row[3],@board_row[4],@board_row[5],@board_row[6],@board_row[7],@board_row[8])
    @board_column
  end
 
  def board_box
    @box = [
             [@board_row[0][0], @board_row[0][1], @board_row[0][2], @board_row[1][0], @board_row[1][1], @board_row[1][2], @board_row[2][0], @board_row[2][1], @board_row[2][2]],
             [@board_row[3][0], @board_row[3][1], @board_row[3][2], @board_row[4][0], @board_row[4][1], @board_row[4][2], @board_row[5][0], @board_row[5][1], @board_row[5][2]],
             [@board_row[6][0], @board_row[6][1], @board_row[6][2], @board_row[7][0], @board_row[7][1], @board_row[7][2], @board_row[8][0], @board_row[8][1], @board_row[8][2]],
             [@board_row[0][3], @board_row[0][4], @board_row[0][5], @board_row[1][3], @board_row[1][4], @board_row[1][5], @board_row[2][3], @board_row[2][4], @board_row[2][5]],
             [@board_row[3][3], @board_row[3][4], @board_row[3][5], @board_row[4][3], @board_row[4][4], @board_row[4][5], @board_row[5][3], @board_row[5][4], @board_row[5][5]],
             [@board_row[6][3], @board_row[6][4], @board_row[6][5], @board_row[7][3], @board_row[7][4], @board_row[7][5], @board_row[8][3], @board_row[8][4], @board_row[8][5]],
             [@board_row[0][6], @board_row[0][7], @board_row[0][8], @board_row[1][6], @board_row[1][7], @board_row[1][8], @board_row[2][6], @board_row[2][7], @board_row[2][8]],
             [@board_row[3][6], @board_row[3][7], @board_row[3][8], @board_row[4][6], @board_row[4][7], @board_row[4][8], @board_row[5][6], @board_row[5][7], @board_row[5][8]],
             [@board_row[6][6], @board_row[6][7], @board_row[6][8], @board_row[7][6], @board_row[7][7], @board_row[7][8], @board_row[8][6], @board_row[8][7], @board_row[8][8]]  
           ]
  end
 
  def solve!

    board_row
    convert_to_cell_objects
    board_column
    board_box

    possible_answers = []
    model_of_possible_answers = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    solution_for_cell = model_of_possible_answers - possible_answers 
    counter = 0
  
    if solution_for_cell.length > 1

      @board_row[counter].each do |cell|
        if cell.value != "0"
          possible_answers << cell.value
        end 
      end
        
      column_index = @board_row[counter].index("0")
         
      @board_column[column_index].each do |cell|
        if cell.value != "0"
          possible_answers << cell.value
        end 
      end

      @box.each_with_index do |box_array, index|
        box_array.each_with_index do |cell, box_index|
          if cell.value != "0"
            possible_answers << cell.value
          end
        end
      end
    
    else
      @board_row[counter][@board_row[counter].index("0")] = solution_for_cell.first.value         # This plugs in the final answer for that particular cell.
    end
    
    counter += 1
  end
 
    # if possibilities.length == 1
 
     
    #   p @board_row[counter][index_at_zero] #= "IT IS WORKING IF YOU SEE ME" #possibilities[0]
    # # end
    
  
 
 
  def board
    @board_string
  end
 
end
 
board_string = File.readlines('sample.unsolved.txt').first.chomp
game = Sudoku.new(board_string)
 
game.solve!


game.board_row
 
# puts "BOARD ROW" 
# game.board_row
# puts ""
# puts "BOARD COLUMN"
# game.board_column
# puts ""
puts "BOARD BOX"
game.board_box
puts game.board
