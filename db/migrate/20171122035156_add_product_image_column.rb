class AddProductImageColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :image, :attachment
  end
end
