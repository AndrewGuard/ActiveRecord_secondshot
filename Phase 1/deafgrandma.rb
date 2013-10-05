# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby deaf_grandma.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your Grandma.
 
# You'll probably want to write other methods, but this 
# encapsulates the core Grandma logic

def deaf_grandma
  puts "Say hello to your grandmother!"
  
  while true
    talk = gets.chomp
    break if talk == "I love ya, Grandma, but I've got to go."
    if talk == ""
      talk = gets.chomp
      if talk == ""
        break
      end
    end
    if talk != talk.upcase
      puts "HUH?! SPEAK UP, SONNY!"
    else 
      puts "NO, NOT SINCE 1983!"
    end
  end
end

# Run our method
deaf_grandma
