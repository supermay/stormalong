ActiveAdmin.register Article do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :body, :created_at, :updated_at, photos: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create'
#   permitted
# end

index do
  column :id
  column :title
  column :body
  column do |article|
     links = link_to "Edit", edit_admin_article_path(article)
     links += " "
     links += link_to "Delete", admin_article_path(article), :method => :delete, data: { confirm: "Are you sure?" }
     links
   end

 end

end
