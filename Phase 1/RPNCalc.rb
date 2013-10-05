class RPNCalculator
  def evaluate(expression)
    stack = []
    stack = expression.split(' ')         

    until stack.length == 1
      stack.each_with_index { |item, index|
        if item == "+" || item == "-" || item == "*"
          stack[index] = eval(stack[index - 2] + stack[index] + stack[index - 1]).to_s
          stack.delete_at(index - 1)
          stack.delete_at(index - 2)
        end
      }
    end

    stack.join.to_i
  end
end