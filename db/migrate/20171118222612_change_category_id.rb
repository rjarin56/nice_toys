class ChangeCategoryId < ActiveRecord::Migration[5.1]
  def up
    change_table :products do |t|
      t.change :category_id, :string
  end
  def down
    change_table :products do |t|
      t.change :category_id, :integer, foreign_key: true
  end
end
