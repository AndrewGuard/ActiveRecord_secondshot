require 'csv'
require 'date'
 
class Person
  attr_reader :id, :first_name, :last_name, :email, :phone, :created_at
 
  def initialize(person_params)
    @id = person_params[:id]
    @first_name = person_params[:first_name]
    @last_name = person_params[:last_name]
    @email = person_params[:email]
    @phone = person_params[:phone]
    @created_at = person_params[:created_at]
  end

end

 
class PersonParser
  attr_reader :id, :first_name, :last_name, :email, :phone, :created_at, :people, :file
  
  def initialize(file)
    @file = file
    @people = []
    people
  end
  
  def people
    CSV.foreach(file, :headers => true, :header_converters => :symbol) do |row|
      @people << Person.new(row)
    end
  end

  def add_person(person_params)
    CSV.open("people.csv") do |csv|
      @people << Person.new(person_params)
    end
  end
  
  def save
    CSV.open(file, 'w') do |csv|
      @file << add_person
      people.each do |person|
        csv << person
      end
    end
  end
end
 
parser = PersonParser.new('people.csv')

parser.add_person({id: 201, first_name: "Andrew", last_name: "Guard", email: "andrew.s.guard@gmail.com", phone: 2524124574, created_at: Time.now})
 

puts "There are #{parser.people.size} people in the file '#{parser.file}'."
 
p parser.people
 
