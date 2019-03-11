class UserProduct < ApplicationRecord
  ALLOWED_DAYS = ['Monday',
                  'Tuesday',
                  'Wednesday',
                  'Thursday',
                  'Friday',
                  'Saturday'].freeze

  belongs_to :product
  
  validates_presence_of :product_id, :type
  validates :cost, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, 
    numericality: { greater_than: 0 }
  validates :recurring_on
  validates_inclusion_of :recurring_on, in: ALLOWED_DAYS
end
