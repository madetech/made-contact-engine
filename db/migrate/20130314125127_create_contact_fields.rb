class CreateContactFields < ActiveRecord::Migration
  def change
    create_table :contact_fields do |t|
      t.string  :name
      t.text    :content
      t.integer :address_id
      t.integer :ordering

      t.timestamps
    end
  end
end
