class AddIndexToContactAddress < ActiveRecord::Migration
  def change
    add_index :contact_addresses, :ordering
  end
end
