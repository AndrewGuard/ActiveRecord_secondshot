require 'csv'

class ThingsList
  attr_reader :list_item

  def initialize
    @list_item = []
  end

  def load_list(filename)
    CSV.foreach(filename) do |row|
      @list_item << row.to_s
    end
    p @list_item
  end
end

bucket_list = ThingsList.new
bucket_list.load_list('todo.csv')

class Task
  def define_action
    if ARGV[0] == "list"
      #TODO Connect to method
    elsif ARGV[0] == "add"
      #TODO Connect to method
    elsif ARGV[0] == "delete"
      #TODO Connect to method
    end
  end
end
