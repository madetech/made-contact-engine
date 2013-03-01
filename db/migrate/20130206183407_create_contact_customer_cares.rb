class CreateContactCustomerCares < ActiveRecord::Migration
  def change
    create_table :contact_customer_cares do |t|
      t.text  :address
      t.string :telephone
      
      t.timestamps
    end
  end
end
