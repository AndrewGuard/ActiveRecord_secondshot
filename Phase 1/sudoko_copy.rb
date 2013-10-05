class Sudoku
 
  def initialize(board_string)
    @board_string = board_string
  end
 
  def board_row
    @board_row = @board_string.split(//).each_slice(9).to_a
    # @board_row.each do |row|
    #   p row
    # end
    # @board_row  
  end
 
  def board_column
    @board_column = @board_row[0].zip(@board_row[1],@board_row[2],@board_row[3],@board_row[4],@board_row[5],@board_row[6],@board_row[7],@board_row[8])
    # @board_column.each do |column|
    #    column
    # end
  end
 
 
 
 
  def board_box
    # box_1 = [@board_row[0][0], @board_row[0][1], @board_row[0][2], @board_row[1][0], @board_row[1][1], @board_row[1][2], @board_row[2][0], @board_row[2][1], @board_row[2][2]]
    # box_2 = [@board_row[3][0], @board_row[3][1], @board_row[3][2], @board_row[4][0], @board_row[4][1], @board_row[4][2], @board_row[5][0], @board_row[5][1], @board_row[5][2]]
    # box_3 = [@board_row[6][0], @board_row[6][1], @board_row[6][2], @board_row[7][0], @board_row[7][1], @board_row[7][2], @board_row[8][0], @board_row[8][1], @board_row[8][2]]
    # box_4 = [@board_row[0][3], @board_row[0][4], @board_row[0][5], @board_row[1][3], @board_row[1][4], @board_row[1][5], @board_row[2][3], @board_row[2][4], @board_row[2][5]]
    # box_5 = [@board_row[3][3], @board_row[3][4], @board_row[3][5], @board_row[4][3], @board_row[4][4], @board_row[4][5], @board_row[5][3], @board_row[5][4], @board_row[5][5]]
    # box_6 = [@board_row[6][3], @board_row[6][4], @board_row[6][5], @board_row[7][3], @board_row[7][4], @board_row[7][5], @board_row[8][3], @board_row[8][4], @board_row[8][5]]
    # box_7 = [@board_row[0][6], @board_row[0][7], @board_row[0][8], @board_row[1][6], @board_row[1][7], @board_row[1][8], @board_row[2][6], @board_row[2][7], @board_row[2][8]]
    # box_8 = [@board_row[3][6], @board_row[3][7], @board_row[3][8], @board_row[4][6], @board_row[4][7], @board_row[4][8], @board_row[5][6], @board_row[5][7], @board_row[5][8]]
    # box_9 = [@board_row[6][6], @board_row[6][7], @board_row[6][8], @board_row[7][6], @board_row[7][7], @board_row[7][8], @board_row[8][6], @board_row[8][7], @board_row[8][8]]
  
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
  #   box_array = []
  #   temp_board_row = @board_row
  #   3.times do 
  #     temp_board_row.each do |row|
  #       box_array << row.slice!(0..2)
  #     end
  #   end
  #   temp_board_row = box_array.flatten.each_slice(9).to_a
    
  #   # @final_box.each do |box|
  #   #    box
    
  #   # box_array = []
  #   # 3.times do 
  #   #   @board_row.each_with_index do |row, index|
  #   #     box_array << row[index*3, 3]
  #   #   end
  #   # end
  #   p "THIS IS THE BOX ARRAY"
  #   p box_array
  #   p "this is the temp"
  #   p temp_board_row
  # end
 
  def solve!
    board_row
    board_column
    board_box
    holding_container = []
    counter = 0
    benchmark_holding_container = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    
      INSERT LOOP HERE
        @board_row[counter].each do |cell|
          if cell != "0"
            holding_container << cell
          end 
        end
          
        column_index = @board_row[counter].index("0")
           
        @board_column[column_index].each do |cell|
          if cell != "0"
            holding_container << cell
          end 
        end
    
        # @box[counter].each do |cell|
        #   if cell != "0"
        #     holding_container << cell
        #   end 
        # end  
 
        @box.each |x|
          if x.include?(@board_row[counter][column_index]))
 
        COUNTER += 1
      END LOOP HERE
 
    possibilities = benchmark_holding_container - holding_container
    # if possibilities.length == 1
 
     
    #   p @board_row[counter][index_at_zero] #= "IT IS WORKING IF YOU SEE ME" #possibilities[0]
    # # end
    
  end
 
 
  def board
    @board_string
  end
 
end
 
# The file has newlines at the end of each line, so we call
# String#chomp to remove them.
board_string = File.readlines('sample.unsolved.txt').first.chomp
#  board_string = '10580T0090076405200400819019007306762083090000061050007600030430020501600308900
# 0050300819028500606000040500074028303497600050083004901500870'
game = Sudoku.new(board_string)
 
# Remember: this will just fill out what it can and not "guess"
game.solve!
 
# puts "BOARD ROW" 
# game.board_row
# puts ""
# puts "BOARD COLUMN"
# game.board_column
# puts ""
puts "BOARD BOX"
game.board_box
puts game.board
