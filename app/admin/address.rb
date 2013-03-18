if defined?(ActiveAdmin)
  ActiveAdmin.register Contact::Address do
    menu :label => "Pages", :parent => "Contact"

    controller do
      defaults :finder => :find_by_url
    end

    index :title => "Contact Addresses" do
      column :name

      default_actions
    end

    form do |f|
      f.inputs "Address" do
        f.input     :name
        f.input     :content,
                    :as => :rich,
                    :config => { :width => '76%', :height => '300px' }
        f.input     :latitude
        f.input     :longitude
        f.input     :map_link,
                    :as => :string
        f.input     :ordering

        f.has_many  :fields do |f_field|
          f_field.inputs "Contact Field" do
            f_field.input :name
            f_field.input :content,
                          :as => :rich,
                          :config => { :width => '76%', :height => '100px' }
            f_field.input :ordering
            f_field.input :_destroy,
                          :as => :boolean,
                          :label => "Delete"
          end
        end
      end

      f.buttons
    end

    filter :name
  end
end
