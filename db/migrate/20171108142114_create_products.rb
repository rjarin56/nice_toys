class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :category_id
      t.string :stock_quantity
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end
