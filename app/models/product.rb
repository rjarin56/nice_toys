class Product < ApplicationRecord
  belongs_to :category, foreign_key: :category_id
  validates :product_name, :category_id, :stock_quantity, presence: true
end
