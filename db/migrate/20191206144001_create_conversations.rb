class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.integer :listing_id
      t.integer :requester_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
