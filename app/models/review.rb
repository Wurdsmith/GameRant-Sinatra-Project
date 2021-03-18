class Review < ActiveRecord::Base
    belongs_to :games
    belongs_to :users
    validates_presence_of :title, :content, :date, :star_rating
end