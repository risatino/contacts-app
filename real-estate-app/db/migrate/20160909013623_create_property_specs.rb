class CreatePropertySpecs < ActiveRecord::Migration[5.0]
  def change
    create_table :property_specs do |t|
      t.string :desc
      t.integer :year
      t.integer :sq_ft
      t.string :bedrooms
      t.string :bathrooms
      t.string :floors
      t.string :availability
      t.integer :price

      t.timestamps
    end
  end
end
