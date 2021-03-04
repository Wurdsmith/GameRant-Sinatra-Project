class User < ActiveRecord::Base
    has_many :games
    has_many :reviews, through: :games
    has_secure_password
    
    validates_uniqueness_of(:username)
end
