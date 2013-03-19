class CreateContactNewsletterSignups < ActiveRecord::Migration
  def change
    create_table :contact_newsletter_signups do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :email
      t.datetime :sent_at

      t.timestamps
    end
  end
end
