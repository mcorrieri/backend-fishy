class Post < ApplicationRecord
    has_many :fish
    has_many :users, through: :fish
end
