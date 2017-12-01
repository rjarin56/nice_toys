ActiveAdmin.register Customer do

  permit_params :full_name, :email, :phone_number, :province_id

end
