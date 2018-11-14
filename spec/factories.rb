FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { "Material - #{Faker::Commerce.material}. Color - #{Faker::Commerce.color}" }
    price { Faker::Commerce.price }
  end
  
  factory :product_without_name, parent: :product do
    name nil
  end
  
  factory :product_without_description, parent: :product do
    description nil
  end
  
  factory :product_without_price, parent: :product do
    price nil
  end
end
