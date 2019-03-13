FactoryBot.define do
  factory :comment do
    user { FactoryBot.create(:user) }
    product { FactoryBot.create(:product) }
    body { "Sbadabam!"}
    rating { 3 }
    created_at { "Mon, 11 Mar 2019 09:31:27 UTC +00:00" }
  end
end
