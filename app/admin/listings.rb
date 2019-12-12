ActiveAdmin.register Listing do
  permit_params :metro_area, :start_date, :end_date, :owner_id, :available, :address, :beds, :baths, :private_bath, :floor, :elevator, :laundry, :rent, :gender_preference, :pets, :details, :roomate


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
