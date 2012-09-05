FactoryGirl.define do
  factory :page do; end
  factory :user do
    email 'me@example.com'
    password 'secret'
    password_confirmation 'secret'
  end
end