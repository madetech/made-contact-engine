FactoryGirl.define do
  factory :customer_care, class: Contact::CustomerCare do |f|
    f.id              1
    f.address         "123 London Road"
    f.telephone       "02077123456"
  end
end