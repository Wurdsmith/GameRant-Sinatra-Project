class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :content
      t.timestamp :date
      t.integer :star_rating
      t.integer :game_id
      t.integer :user_id
    end
  end
end
