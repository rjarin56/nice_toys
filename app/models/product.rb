class Product < ApplicationRecord
  belongs_to :category, foreign_key: :category_id
  validates :product_name, :category_id, :stock_quantity, presence: true

  def self.search(search, category)
    if category != ''
      where('product_name LIKE ?', "%#{search}%").where('category_id = ?', category)
    else
     where('product_name LIKE ?', "%#{search}%")
    end
  end
end
