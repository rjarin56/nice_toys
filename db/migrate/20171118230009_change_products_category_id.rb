class ChangeProductsCategoryId < ActiveRecord::Migration[5.1]
  def change
    change_table :products do |t|
      t.remove :category_id, :string
    end
  end
end
