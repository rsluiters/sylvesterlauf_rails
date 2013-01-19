FactoryGirl.define do
  factory :user do
    name     "Freddy Test"
    email    "freddy@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end