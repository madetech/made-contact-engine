FactoryGirl.define do
  factory :office_address, class: Contact::OfficeAddress do |f|
    f.id              1
    f.title           "Test"
    f.address         "123 London Road"
    f.postcode        "SE3 7JS"
  end
end