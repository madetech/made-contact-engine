if defined?(ActiveAdmin)

  ActiveAdmin.register Contact::PromotedLink do
    
    menu :label => "Promoted Links", :parent => "Contact"

    index :title => "Promoted Links" do
      column :title
      column :text
      column :url

      default_actions
    end

    form do |f|
      f.inputs "Promoted Link" do
        f.input :title
        f.input :text
        f.input :url
        f.input :image, :as => :file
      end

      f.buttons
    end

    show do |link|
      attributes_table do
        row :title
        row :text
        row :url
      end
    end

    filter :title
    
  end
end