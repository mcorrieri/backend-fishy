class User < ApplicationRecord
    has_many :fish
    has_many :posts, through: :fish
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end


