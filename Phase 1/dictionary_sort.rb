
def dictionary_sort(arr)
  arr.sort_by {|a| a.downcase}
end

word_list = []

p "Please enter a word."
while true
  word = gets.chomp
  break if word == ''
  p "Please enter another word (or press enter to quit)."
  word_list << word
end

p dictionary_sort(word_list)
