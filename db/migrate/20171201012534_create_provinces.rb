class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :gst
      t.string :pst
      t.string :hst

      t.timestamps
    end
  end
end
