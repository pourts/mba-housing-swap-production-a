class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :requester_id
      t.string :metro_area
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
