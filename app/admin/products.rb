ActiveAdmin.register Product do

  permit_params :product_name, :category_id, :stock_quantity, :image, :price, :description

end
