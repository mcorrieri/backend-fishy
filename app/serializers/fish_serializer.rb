class FishSerializer < ActiveModel::Serializer
  attributes :id, :image, :breed, :tanksize, :carelevel, :watertype
end
