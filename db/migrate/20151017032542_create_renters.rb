class CreateRenters < ActiveRecord::Migration
  def change
    create_table :renters do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :email

      t.timestamps null: false
    end
  end
end
