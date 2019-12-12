class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :conversation_id
      t.integer :author_id

      t.timestamps
    end
  end
end
