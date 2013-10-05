class Person                                    # @@var_2 not used anywhere - deleted
                                                # attr_readers deleted - not used anywhere                            
  def initialize(numbers)
    @law_of_demeter = "Law of Demeter"          # clarify instance variable
  end
 
  def do_stuff(numbers)
    numbers.each do |x|                         # changed var_8 to x to clarify its iterative role
      sum += x + 2                              # changed var_9 to sum to represent its role
    end
    p sum
  end
end

sum = Person.new([1,2,3])

p sum
