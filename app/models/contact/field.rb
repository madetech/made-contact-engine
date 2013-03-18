require 'stringex'

module Contact
  class Field < ActiveRecord::Base
    belongs_to                      :address

    attr_accessible                 :name,
                                    :content,
                                    :ordering

    validates_presence_of           :name,
                                    :content

    default_scope                   :order => 'ordering ASC'

    def to_s
      name
    end
  end
end
