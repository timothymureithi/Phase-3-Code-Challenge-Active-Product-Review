class Product < ActiveRecord::Base
    has_many :users, through: :reviews
    has_many :reviews
    
end