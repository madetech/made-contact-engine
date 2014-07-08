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
    validates_presence_of           :latitude, if: Proc.new { |a| a.longitude.present? }
    validates_presence_of           :longitude, if: Proc.new { |a| a.latitude.present? }

    acts_as_url                     :name

    default_scope                   :order => 'ordering ASC'

    def to_param
      url
    end

    def to_s
      name
    end

    def has_map_coordinates?
      self.latitude.present? and self.longitude.present?
    end
  end
end
