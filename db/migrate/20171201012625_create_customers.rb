class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
