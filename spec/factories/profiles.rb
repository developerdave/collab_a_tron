# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    firstname  "Dave"
    surname    "Green"
    sequence :username do |n| "developerdave#{n}" end
    sequence :email do |n| "dave#{n}@example.com" end
    job_role   "Developer"
  end
end
