class Review < ActiveRecord::Base 
    belongs_to :product
end


    # A Review belongs to a Product, and a Review also belongs to a User. 
