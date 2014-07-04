class AddImageToContactFeedbacks < ActiveRecord::Migration
  def up
    add_attachment :contact_feedbacks, :image
  end

  def down
    remove_attachment :contact_feedbacks, :image
  end
end
