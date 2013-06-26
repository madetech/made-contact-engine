if defined?(ActiveAdmin) and Contact.config.admin_enabled.include?(:newsletter_signup)
  ActiveAdmin.register Contact::NewsletterSignup do
    controller do
      cache_sweeper Contact.config.cache_sweeper if Contact.config.cache_sweeper
    end

    menu :label => "Newsletter Signups", :parent => "Contact"

    index :title => "Signups" do
      selectable_column
      column :first_name
      column :last_name
      column :email

      default_actions
    end

    form do |f|
      f.inputs "Address" do
        f.input     :first_name
        f.input     :last_name
        f.input     :email
        f.input     :created_at, :as => :datepicker
      end

      f.actions
    end

    filter :first_name
    filter :last_name
    filter :email
    filter :created_at
  end
end
