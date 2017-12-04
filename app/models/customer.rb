class Customer < ApplicationRecord
  belongs_to :province
  has_many :orders
  validates :full_name, :email, :phone_number, presence: true
end
