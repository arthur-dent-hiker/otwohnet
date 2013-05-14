# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :connection_invitation do
    user_id 1
    connection_code 1
  end
end
