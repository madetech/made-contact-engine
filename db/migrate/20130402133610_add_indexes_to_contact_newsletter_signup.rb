class AddIndexesToContactNewsletterSignup < ActiveRecord::Migration
  def change
    add_index :contact_newsletter_signups, :email
    add_index :contact_newsletter_signups, :created_at
  end
end
