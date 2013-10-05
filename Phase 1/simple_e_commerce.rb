class User
  attr_reader :name, :email, :photo                    # :photo_name, :photo_url,

  def initialize(user_attributes)
    @name = user_attributes[:name]
    @email = user_attributes[:email]
    @photo = Photo.new(:photo_name, :photo_url)           
  end

  def name
    @photo_name
  end

end

class Product
  attr_reader :name, :description, :price, :photo

  def initialize(product_attributes)
    @name = product_attributes[:name]
    @description = product_attributes[:description]
    @price = product_attributes[:price]
    @photo = Photo.new(:photo_name, :photo_url)
  end

end

class Photo
  attr_reader :photo_name, :photo_url

  def initialize(photo_name, url)
    @photo_name = :photo_name
    @url = :photo_url
  end

end




# Put your implementation here
 
# Feel free to add more driver code here
 
# The driver code below is your guide. 
# DO NOT change anything below this line.
 





 # **********************************************************************
## Create a user
user = User.new({ :name => "ed shadi", 
                  :email => "shadi@devbootcamp.com", 
                  :photo_name => "shadi", 
                  :photo_url => "http://awesome.com/shadi" })
 
# Create a Product
product = Product.new({ :name => "laptop", 
                        :description => "macbook pro", 
                        :price => 1500, 
                        :photo_name => "macbook", 
                        :photo_url => "http://sweet.com/macbook" })
 
## Obtain information about a User
p user.name       # should return "ed shadi"                      working
p user.email      # should return "shadi@devbootcamp.com"         working
p user.photo      # should return a Photo
p user.photo.name # should return "shadi"
p user.photo.url  # should return "http://awesome.com/shadi"
 
## Obtain information about a Product
p product.name         # should return "laptop"                     working
p product.description  # should return "macbook pro"                working
p product.price        # should return 1500                         working
p product.photo        # should return a Photo
p product.photo.name   # should return "macbook"
p product.photo.url    # should return "http://sweet.com/macbook"
