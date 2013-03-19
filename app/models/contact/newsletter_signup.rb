module Contact
  class NewsletterSignup < ActiveRecord::Base
    attr_accessible                 :first_name,
                                    :last_name,
                                    :email,
                                    :source,
                                    :sent_at

    validates_presence_of           :first_name,
                                    :last_name
    validates_format_of             :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
    validates                       :email, :uniqueness => true

    default_scope                   :order => 'created_at DESC'

    def to_s
      email
    end
  end
end
