class Game < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    validates_presence_of :name
end