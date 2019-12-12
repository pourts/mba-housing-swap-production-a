class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :metro_area
      t.date :start_date
      t.date :end_date
      t.integer :owner_id
      t.boolean :available
      t.string :address
      t.integer :beds
      t.integer :baths
      t.boolean :private_bath
      t.integer :floor
      t.boolean :elevator
      t.string :laundry
      t.integer :rent
      t.string :gender_preference
      t.boolean :pets
      t.string :details
      t.boolean :roomate

      t.timestamps
    end
  end
end
