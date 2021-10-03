class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :description
      t.integer :rooms
      t.integer :bathrooms
      t.boolean :parking_slot
      t.boolean :pets
      t.decimal :daily_rate

      t.timestamps
    end
  end
end
