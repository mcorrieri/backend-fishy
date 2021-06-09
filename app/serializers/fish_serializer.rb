class FishSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :post_id, :name, :care_level
end
