class UserProduct < ApplicationRecord
  belongs_to :product

  validates_presence_of :product_id, :type
end
