class AddRefToLineItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :line_items, :product_id, foreign_key: true
    add_reference :line_items, :order_id, foreign_key: true
  end
end
