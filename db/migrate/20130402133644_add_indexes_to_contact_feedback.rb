class AddIndexesToContactFeedback < ActiveRecord::Migration
  def change
    add_index :contact_feedbacks, :sent_at
    add_index :contact_feedbacks, :created_at
  end
end
