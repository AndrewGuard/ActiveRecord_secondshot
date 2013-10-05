def mean(numbers)
  sum = numbers.inject(:+)
  
  return sum / numbers.length
end

# This will throw an error. Change this line so that it works.
p sample_avg = mean([5, 3, 6, 10])

def mean(*numbers)
  sum = numbers.inject(:+)
  
  return sum / numbers.length
end

# This will throw an error. Change this line so that it works.
p ample_avg = mean(5, 3, 6, 10)

def print_and_sort(array)
  string_array = array.map { |x| x.to_s }
  output_string = ""
  string_array.each do |element|
    output_string = output_string + " " + element
  end
  puts output_string
  string_array.sort
end

p print_and_sort([1, 2, nil, "45", 3 ])
