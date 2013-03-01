if defined?(ActiveAdmin)

  ActiveAdmin.register Contact::OfficeAddress do
    
    menu :label => "Office Addresses", :parent => "Contact"

    index :title => "Office Addresses" do
      column :title
      column :address
      column :postcode

      default_actions
    end

    form do |f|
      f.inputs "Office Address" do
        f.input :title
        f.input :address, :as => :rich,
                :config => { :width => '77%', :height => '300px' }
        f.input :postcode
      end

      f.buttons
    end

    show do |office|
      attributes_table do
        row :title
        row :address
        row :postcode
      end
    end

    filter :title
    
  end
end