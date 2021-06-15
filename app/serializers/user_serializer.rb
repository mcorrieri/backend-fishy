class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :fish
  has_many :posts
  
end
