class User < ActiveRecord::Base
    has_many :reviews
    has_many :games, through: :reviews
    has_secure_password
    validates_uniqueness_of :username
end
