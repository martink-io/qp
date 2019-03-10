class User < ApplicationRecord
  has_many :quotations
  validates_presence_of :name, :email, :phone, :password
  validates_uniqueness_of :email
end
