# 1. Define enumerable methods
 
=begin

The map method iterates over selected portions of an array, 
modifying the elements.

Inject performs the same operation as specified in parentheses across
all of the elements in the array (or just those selected).

Select is used to search through an array and return an array composed
of elements that match select's search criteria.

=end
 
 
# -----------
# 2. Write your own method `Array#my_map`
#
# Here is a template to start with:
class Array
  def my_map
    results = []
      self.length.times do |x|
      yield(self[x])
      results << x
    end
    results
  end
end
 
array = [1,2,3,4]
p [1,2,3,4].my_map { |i| i -= 1 }  #== [0,1,2,3] # makes you count like a programmer!
 
