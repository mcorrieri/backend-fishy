class FishSerializer < ActiveModel::Serializer
  attributes :id, :image, :breed, :tanksize, :carelevel, :watertype, :owner_id
end
