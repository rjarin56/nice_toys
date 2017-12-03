class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :gst
      t.string :pst
      t.string :hst

      t.timestamps
    end
  end
end
