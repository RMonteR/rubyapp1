FactoryBot.define do

  factory :order do
    user_id { FactoryBot.create(:user) }
    product_id { FactoryBot.create(:product) }
    total { 400 }
  end
end
