class ChangeProductsCategoryIdId < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :category_id_id
  end
end
