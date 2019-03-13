FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    first_name { "Test" }
    last_name { "Mest" }
    password { "123456" }
    admin { false }
  end

  factory :admin, class: User do
    sequence(:email) { |n| "user2#{n}@example.com" }
    first_name { "Test" }
    last_name { "Mest" }
    password { "123456" }
    admin { true }
  end
end
