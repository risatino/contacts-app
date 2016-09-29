class AddNameToSuperheros < ActiveRecord::Migration[5.0]
  def change
    add_column :superheros, :name, :string
    add_column :superheros, :power, :string
  end
end
