class AddAddressToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :address, :text
    add_column :customers, :city, :string
  end
end
