require 'stringex'

module Contact
  class Address < ActiveRecord::Base
    has_many                        :fields
    accepts_nested_attributes_for   :fields, :allow_destroy => true

    attr_accessible                 :name,
                                    :url,
                                    :content,
                                    :latitude,
                                    :longitude,
                                    :ordering,
                                    :fields_attributes

    validates_presence_of           :name

    acts_as_url                     :name

    default_scope                   :order => 'ordering ASC'

    def to_param
      url
    end

    def to_s
      name
    end
  end
end
