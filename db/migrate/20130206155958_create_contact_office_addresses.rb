class CreateContactOfficeAddresses < ActiveRecord::Migration
  def change
    create_table :contact_office_addresses do |t|
      t.string :title
      t.text :address

      t.timestamps
    end
  end
end
