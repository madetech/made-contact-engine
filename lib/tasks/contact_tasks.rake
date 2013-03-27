namespace :contact do
  desc "Sends contact feedback to specified address"
  task :send_feedback => :environment do
    Contact::Feedback.send_unsent_via_email
  end
end
