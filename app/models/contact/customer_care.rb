module Contact
  class CustomerCare < ActiveRecord::Base
    self.table_name = "contact_customer_cares"

    attr_accessible :address, :telephone

    validates_presence_of :address, :telephone

    validate :record_count_within_limit, :on => :create

    def record_count_within_limit
      if Contact::CustomerCare.count > 0
        self.errors[:base] << "A Customer Care entry already exists"
      end
    end
  end
end
