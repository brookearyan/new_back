class MemeSerializer < ActiveModel::Serializer
  has_many :likes
  attributes :id, :alias, :one, :two, :three, :four, :five, :created_at
end
