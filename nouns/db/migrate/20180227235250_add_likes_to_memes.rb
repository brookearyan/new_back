class AddLikesToMemes < ActiveRecord::Migration[5.1]
  def change
    add_column :memes, :likes, :integer
  end
end
