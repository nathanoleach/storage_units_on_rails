class AddBuildingIdToStorageUnits < ActiveRecord::Migration
  def change
    add_column :storage_units, :building_id, :integer
  end
end
