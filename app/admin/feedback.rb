if defined?(ActiveAdmin) and Contact.config.admin_enabled.include?(:feedback)
  ActiveAdmin.register Contact::Feedback do
    menu :label => "Feedback", :parent => "Contact"

    index :title => "Feedback" do
      column :first_name
      column :last_name
      column :email
      column :created_at
      column :sent_at

      default_actions
    end

    form do |f|
      f.inputs "Feedback" do
        f.input     :first_name
        f.input     :last_name
        f.input     :email
        f.input     :message
        f.input     :newsletter_opt_in
        f.input     :created_at,          :as => :datepicker
        f.input     :sent_at,             :as => :datepicker
      end

      f.actions
    end

    filter :first_name
    filter :last_name
    filter :email
    filter :created_at
    filter :sent_at
  end
end
