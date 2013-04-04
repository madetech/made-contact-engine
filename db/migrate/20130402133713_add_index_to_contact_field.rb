class AddIndexToContactField < ActiveRecord::Migration
  def change
    add_index :contact_fields, :ordering
  end
end
