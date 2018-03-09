class Meme < ApplicationRecord
  has_many :likes

  def self.likes
    @likes = Like.all.select { |like| like.meme_id == @meme.id }
  end
end
