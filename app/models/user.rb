class User < ActiveRecord::Base
    has_many :products, through: :reviews
    has_many :reviews

    def favorite_product
        self.reviews.order(:star_rating).last.product
    end

    def remove_reviews(product)
        self.reviews.where(product: product).destroy_all
    end

end

    
# User#reviews
# returns a collection of all the Reviews that the User has given
# User#products
# returns a collection of all the Products that the User has reviewed