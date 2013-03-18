class DropContactCustomerCares < ActiveRecord::Migration
  def change
    drop_table :contact_customer_cares
  end
end
