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
        f.has_many :fields, heading: false, allow_destroy: true  do |cf|
          cf.input :name
          cf.input :content,
                   :as => :rich,
                   :config => { :width => '76%', :height => '100px' }
          cf.input :ordering
        end
      end

      f.actions
    end

    filter :name
  end
end
