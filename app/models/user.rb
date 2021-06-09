class User < ApplicationRecord
    has_many :fish
    has_many :posts, through: :fish
end


