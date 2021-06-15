class PostSerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :image, :location, :price, :comment, :user_id, :fish_id 
end
