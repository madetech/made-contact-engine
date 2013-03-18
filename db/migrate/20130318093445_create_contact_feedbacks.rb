class CreateContactFeedbacks < ActiveRecord::Migration
  def change
    create_table :contact_feedbacks do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :email
      t.text     :message
      t.boolean  :newsletter_opt_in
      t.datetime :sent_at

      t.timestamps
    end
  end
end
