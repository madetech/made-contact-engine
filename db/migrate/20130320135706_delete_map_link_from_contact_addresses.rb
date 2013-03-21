class DeleteMapLinkFromContactAddresses < ActiveRecord::Migration
  def change
    remove_column :contact_addresses, :map_link
  end
end
