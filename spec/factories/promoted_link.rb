FactoryGirl.define do
  factory :promoted_link, class: Contact::PromotedLink do |f|
    f.id                  1
    f.title               "Test"
    f.text                "Lorem ipsum omnia mutantur nihil interit"
    f.url                 "http://www.example.com"
    f.image_file_name     "image.jpg"
    f.image_content_type  "image/jpg"
    f.image_file_size     "12345"
    f.image_updated_at    "2013-01-01 00:00:00"
  end
end