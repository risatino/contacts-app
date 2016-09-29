class RemoveFirstNameFromSuperheros < ActiveRecord::Migration[5.0]
  def change
    remove_column :superheros, :first_name, :string
    remove_column :superheros, :last_name, :string
  end
end
