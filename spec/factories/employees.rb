# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    first_name "MyString"
    last_name "MyString"
    agency nil
  end
end
