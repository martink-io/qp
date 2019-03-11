class User < ApplicationRecord
  has_many :quotations
  
  validates_presence_of :name, :email, :phone, :password
  validates_uniqueness_of :email
  validates :name, length: {minimum: 3}
  validates :phone, length: {minimum: 8}
  validates_format_of :phone, :with => /\A[\d\-+ ()]+\z/i, \
    message: "Can only contain 0-9,-,+,(,) and spaces"
  validates :password, :presence => true, :length => {:within => 6..40}
end
