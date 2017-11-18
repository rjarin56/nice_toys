class AddProductsRefToCategory < ActiveRecord::Migration[5.1]
  def change
    add_index :products, :category_id
  end
end
