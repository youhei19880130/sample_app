FactoryGirl.define do
  factory :user do
    name     "someya yohhei"
    email    "someya@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
