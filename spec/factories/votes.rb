# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
    score 1
    employee nil
    phone_number "MyString"
  end
end
