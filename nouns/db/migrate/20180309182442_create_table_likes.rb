class CreateTableLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.belongs_to :meme, index: true
      t.integer :meme_id
    end
  end
end
