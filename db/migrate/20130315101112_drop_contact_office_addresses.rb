class DropContactOfficeAddresses < ActiveRecord::Migration
  def change
    drop_table :contact_office_addresses
  end
end
