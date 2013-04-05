class RemoveTermsAndConditionsFromNewsletterSignups < ActiveRecord::Migration
  def change
    remove_column :contact_newsletter_signups, :terms_and_conditions
  end
end
