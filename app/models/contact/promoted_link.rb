module Contact
  class PromotedLink < ActiveRecord::Base
    self.table_name = "contact_promoted_links"

    attr_accessible :title, :text, :url, :image

    has_attached_file     :image, :styles => {
                                        :small => "100x100#"
                                    }

    validates_presence_of :title, :text, :url, :image
  end
end