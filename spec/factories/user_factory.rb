FactoryGirl.define do
  factory :user do
    email { Faker::Internet.free_email }
    account_name { Faker::Internet.username }
    password 'password'
    encrypted_password 'password'
  end
end
