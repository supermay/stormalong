ActiveAdmin.register Photo do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :image, :featured, :article_id, :description, :created_at, :updated_at
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  column :id do |photo|
    link_to "#{photo.id}", "/admin/photos/#{photo.id}"
  end

  column :article do |photo|
    link_to Article.find(photo.article_id).title, admin_article_path(photo.article_id)
  end


   column :description
   column :featured
   column :image do |photo|
     image_tag(photo.image.url, :height => '256', :width => '256')
   end
   column :created_at
   column :updated_at
  #  column :photos
   column do |photo|
     links = link_to "Edit", edit_admin_photo_path(photo)
     links += "  "
     links += link_to "Delete", admin_photo_path(photo), :method => :delete, data: { confirm: "Are you sure?" }
     links
   end
 end

 controller do
   def update
     update! do |format|
       format.html { redirect_to edit_admin_article_path(resource.article_id) }
     end
   end

   def create
     create! do |format|
       format.html { redirect_to edit_admin_article_path(resource.article_id) }
     end
   end

   def destroy
     destroy! do |format|
       format.html { redirect_to edit_admin_article_path(resource.article_id) }
     end
   end


 end






end
