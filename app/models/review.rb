class Review < ActiveRecord::Base 
    belongs_to :user
    belongs_to :product

    def print_review
        "Review for #{self.product.name} by #{self.user}: #{self.star_rating}. #{comment}"

    end
end


# Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
