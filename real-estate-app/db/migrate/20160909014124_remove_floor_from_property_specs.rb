class RemoveFloorFromPropertySpecs < ActiveRecord::Migration[5.0]
  def change
    remove_column :property_specs, :floors, :string
  end
end
