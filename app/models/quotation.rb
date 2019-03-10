class Quotation < ApplicationRecord
  belongs_to :user

  has_many :user_products
  has_one :user_product_good
  has_one :user_product_service
  has_one :user_product_subscription

  accepts_nested_attributes_for :user_product_service, :allow_destroy => true
  accepts_nested_attributes_for :user_product_good, :allow_destroy => true
  accepts_nested_attributes_for :user_product_subscription, :allow_destroy => true

  before_create :generate_unique_id

  protected

  def generate_unique_id
    self.u_id = loop do
      random_token = SecureRandom.uuid
      break random_token unless Quotation.exists?(u_id: random_token)
    end
  end
end
