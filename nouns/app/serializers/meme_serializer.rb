class MemeSerializer < ActiveModel::Serializer
  attributes :id, :alias, :one, :two, :three, :four, :five, :created_at, :likes
end
