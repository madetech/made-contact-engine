if defined?(ActiveAdmin) and Contact.config.admin_enabled.include?(:address)
  ActiveAdmin.register Contact::Address do
    controller do
      cache_sweeper Contact.config.cache_sweeper if Contact.config.cache_sweeper
      defaults :finder => :find_by_url
    end

    menu :label => "Pages", :parent => "Contact"

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
        f.input     :ordering
      end

      f.inputs "Contact Fields" do
        f.has_many :fields, heading: ""  do |f_field|
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

      f.actions
    end

    filter :name
  end
end
