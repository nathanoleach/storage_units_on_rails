class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.date :start_date
      t.date :end_date
      t.string :billing_period
      t.float :billing_rate
      t.integer :renter_id
      t.integer :storage_unit_id
      t.text :notes

      t.timestamps null: false
    end
  end
end
