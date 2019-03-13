FactoryBot.define do

  factory :order do
    user_id { 4 }
    product_id { 1 }
    total { 400 }
  end
end
