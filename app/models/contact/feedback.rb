module Contact
  class Feedback < ActiveRecord::Base
    attr_accessible                 :first_name,
                                    :last_name,
                                    :email,
                                    :message,
                                    :newsletter_opt_in

    validates_presence_of           :first_name,
                                    :last_name,
                                    :email,
                                    :message
    validates_format_of             :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

    default_scope                   :order => 'created_at DESC'

    def to_s
      "#{first_name} #{last_name}"
    end
  end
end
