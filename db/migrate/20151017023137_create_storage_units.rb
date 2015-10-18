class CreateStorageUnits < ActiveRecord::Migration
  def change
    create_table :storage_units do |t|
      t.string :name
      t.string :description
      t.integer :length
      t.integer :width
      t.integer :height
      t.integer :renter_id
      t.float :annual_rate
      t.float :monthly_rate

      t.timestamps null: false
    end
  end
end
