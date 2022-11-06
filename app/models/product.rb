class Product < ActiveRecord::Base
    has_many :users, through: :reviews
    has_many :reviews

    def leave_review(user, star_rating, comment)
        Review.create(product: self, user:user, star_rating: star_rating, comment: comment)
    end

    def print_all_reviews
        self.reviews.each do |review|
           puts "Review for #{review.product.name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
        end
   end

   

end

#leave_review

# takes a `User` (an instance of the `User` class), a `star_rating` (integer), and a `comment` (string) as arguments, 
# and creates a new `Review` in the database associated with this Product and the User