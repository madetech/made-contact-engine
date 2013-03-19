require 'active_record'
require 'active_support/concern'

module Contact
  module NewsletterSignupable
    extend ActiveSupport::Concern

    included do
      after_save :save_newsletter_signup

      def save_newsletter_signup
        if self.newsletter_opt_in && Contact::NewsletterSignup.where(:email => self.email).length < 1
          Contact::NewsletterSignup.create(
            :first_name => self.first_name,
            :last_name  => self.last_name,
            :email      => self.email,
            :source     => self.class.name
          )
        end
      end
    end
  end
end
