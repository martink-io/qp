class Product < ApplicationRecord
  has_many :user_products

  validates_presence_of :name, :type, :unit, :unit_price
  validates :unit_price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, 
    numericality: { greater_than: 0 }
end
