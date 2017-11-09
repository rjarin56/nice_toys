class Product < ApplicationRecord

  belongs_to :category

  validates :product_name, :category_id, :stock_quantity, presence: true

end
