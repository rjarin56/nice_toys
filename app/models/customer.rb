class Customer < ApplicationRecord
  belongs_to :province

  validates :full_name, :email, :phone_number, presence: true
end
