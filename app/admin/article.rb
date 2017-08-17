ActiveAdmin.register Article do
  form partial: "form"
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
   column :title do |article|
     link_to "#{article.title}", "/admin/articles/#{article.id}"
   end
   column :body
   column :number_of_photos do |article|
     article.photos.length
   end
   column :created_at
   column :updated_at
  #  column :photos
   column do |article|
     links = link_to "Edit", edit_admin_article_path(article)
     links += "  "
     links += link_to "Delete", admin_article_path(article), :method => :delete, data: { confirm: "Are you sure?" }
     links
   end


 show do |article|
   attributes_table do
     row :title
     row :body
     article.photos.each do |photo|
       row :photo do
         link_to image_tag(photo.image.url, :height => '256', :width => '256'), admin_photo_path(photo)
       end
       row :description do
         photo.description
       end
     end
    end
  end
end
 # sidebar "Details", only: :show do
 #   attributes_table_for article do
 #     row :title
 #     row :body
 #   end
 # end
