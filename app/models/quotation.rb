class Quotation < ApplicationRecord
  belongs_to :user

  has_many :user_products
  has_one :user_product_good
  has_one :user_product_service
  has_one :user_product_subscription

  accepts_nested_attributes_for :user_product_service, :allow_destroy => true
  accepts_nested_attributes_for :user_product_good, :allow_destroy => true
  accepts_nested_attributes_for :user_product_subscription, :allow_destroy => true

  before_create :generate_u_id
  before_create :calculate_total_cost

  validates_presence_of :user_id

  private

  def generate_u_id
    self.u_id = loop do
      random_token = SecureRandom.uuid
      break random_token unless Quotation.exists?(u_id: random_token)
    end
  end

  def calculate_total_cost
    self.total_cost = user_products.sum(:cost)
  end 
end
