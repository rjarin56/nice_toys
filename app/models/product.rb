class Product < ApplicationRecord
  belongs_to :category, foreign_key: :category_id
  validates :product_name, :category_id, :stock_quantity, presence: true

  def self.search(search, category)
    if search
      if category != ''
        find(:all, :conditions => ['product_name LIKE ?', "%#{search}%"]).where(params[:category_id])
      # else
      #   find(:all)
      end
    end
  end
end
