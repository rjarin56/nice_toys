ActiveAdmin.register Contact do
  permit_params :name,
                :phone_number,
                :email
end
