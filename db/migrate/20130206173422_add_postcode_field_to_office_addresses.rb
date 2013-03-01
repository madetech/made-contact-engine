class AddPostcodeFieldToOfficeAddresses < ActiveRecord::Migration
  def change
    add_column :contact_office_addresses, :postcode, :string
  end
end
