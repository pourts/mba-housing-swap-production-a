class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.integer :creator_id
      t.integer :listing_id

      t.timestamps
    end
  end
end
