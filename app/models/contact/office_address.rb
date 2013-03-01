module Contact
  class OfficeAddress < ActiveRecord::Base
    self.table_name = "contact_office_addresses"

    attr_accessible :address, :title, :postcode

    validates_presence_of :title, :address, :postcode
  end
end
