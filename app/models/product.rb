class Product < ApplicationRecord
  belongs_to :category, foreign_key: :category_id
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates :product_name, :category_id, :stock_quantity, presence: true
  validates :image, :attachment_presence => true
  validates_attachment :image, :presence => true, :content_type => { :content_type => "image/jpeg" }, :size => { :in => 0..100.kilobytes }

  def self.search(search, category)
    if category != ''
      where('product_name LIKE ?', "%#{search}%").where('category_id = ?', category)
    else
     where('product_name LIKE ?', "%#{search}%")
    end
  end
end
