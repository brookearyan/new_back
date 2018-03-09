class CreateTableLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :meme_id
    end
  end
end
