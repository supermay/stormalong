ActiveAdmin.register Article do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :title, :body, :photos
#
# or
#
permit_params do
  permitted = [:permitted, :attributes]
  permitted << :other if params[:action] == 'create'
  permitted
end
# #
# index do
#   column :title
#   column :body
#   column :created_at
# end

end
