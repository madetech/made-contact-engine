class AddSourceToContactNewsletterSignups < ActiveRecord::Migration
  def change
    add_column :contact_newsletter_signups, :source, :string
  end
end
