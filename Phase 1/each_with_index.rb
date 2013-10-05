    @box = [
             [1,2,3,4],
             [2,3,4,5],
             [7,7,7,7],
             [1,2,3,4],
             [4,5,6,7]
           ]


          @box.each_with_index do |element, index|
            element.each_with_index do |x, y|
              p x
              puts "row_index: #{index}, column_index: #{y}"
            end
      
          end