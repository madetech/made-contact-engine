if defined?(ActiveAdmin)

  ActiveAdmin.register Contact::CustomerCare do
    
    menu :label => "Customer Care Information", :parent => "Contact"

    index :title => "Customer Care Information" do
      column :address
      column :telephone

      default_actions
    end

    form do |f|
      f.inputs "Customer Care Information" do
        f.input :address
        f.input :telephone
      end

      f.buttons
    end

    show do |link|
      attributes_table do
        row :address
        row :telephone
      end
    end

    filter :title

  end
end