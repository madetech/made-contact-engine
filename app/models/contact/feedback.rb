module Contact
  class Feedback < ActiveRecord::Base
    include Contact::NewsletterSignupable

    attr_accessible                 :first_name,
                                    :last_name,
                                    :email,
                                    :message,
                                    :newsletter_opt_in,
                                    :sent_at

    validates_presence_of           :first_name,
                                    :last_name,
                                    :email,
                                    :message
    validates_format_of             :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

    default_scope                   :order => 'created_at DESC'

    def to_s
      "#{first_name} #{last_name}"
    end

    def self.send_unsent_via_email
      feedback = Contact::Feedback.where(:sent_at => nil)
      feedback.each do |item|
        FeedbackMailer.send_feedback(item).deliver
      end
    end
  end
end
