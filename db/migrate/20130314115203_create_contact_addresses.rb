class CreateContactAddresses < ActiveRecord::Migration
  def change
    create_table :contact_addresses do |t|
      t.string  :name
      t.string  :url
      t.text    :content
      t.string  :latitude
      t.string  :longitude
      t.text    :map_link
      t.integer :ordering

      t.timestamps
    end
  end
end
