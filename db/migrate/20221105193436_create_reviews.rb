class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :comment
      t.integer :product_id
      t.integer :user_id
    end
  end
end


# In your migration, create any columns your reviews table will need to establish these relationships.
# The reviews table should also have:
# A star_rating column that stores an integer.
# A comment column that stores a string.