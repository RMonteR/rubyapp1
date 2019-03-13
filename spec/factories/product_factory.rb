FactoryBot.define do

  factory :product do
    name { "race bike" }
    description { "Guess" }
    colour { "black" }
    price { 500 }
    image_url { "image.jpg" }
  end
end
