class RemoveContactGroup < ActiveRecord::Migration[5.0]
  def change
    drop_table(ContactGroup)
  end
end
