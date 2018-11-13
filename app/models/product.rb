class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :price, presence: true, length: { maximum: 7 } 
end
