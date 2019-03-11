class UserProduct < ApplicationRecord
  belongs_to :product

  validates_presence_of :product_id, :type
  validates :cost, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, 
    numericality: { greater_than: 0 }
end
