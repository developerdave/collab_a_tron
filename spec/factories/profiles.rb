FactoryGirl.define do
  factory :profile do
    firstname  "Dave"
    surname    "Green"
    sequence :username do |n| "developerdave#{n}" end
    sequence :email do |n| "dave#{n}@example.com" end
  end
end