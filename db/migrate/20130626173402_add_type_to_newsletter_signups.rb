class AddTypeToNewsletterSignups < ActiveRecord::Migration
  def change
    add_column :contact_newsletter_signups, :type, :string
  end
end
