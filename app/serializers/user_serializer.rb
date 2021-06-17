class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :fish, through: :posts
  has_many :posts
  
end
