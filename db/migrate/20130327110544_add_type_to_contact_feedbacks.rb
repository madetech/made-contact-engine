class AddTypeToContactFeedbacks < ActiveRecord::Migration
  def change
    add_column :contact_feedbacks, :type, :string
  end
end
