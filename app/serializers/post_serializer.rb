class PostSerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :image, :water_type, :location
end
