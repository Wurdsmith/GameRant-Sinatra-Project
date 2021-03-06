class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :title
      t.datetime :date
      t.string :content
      t.integer :game_id
      t.integer :user_id
    end
  end
end
