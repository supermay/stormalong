ActiveAdmin.register Article do

  # action_item only: [:index, :show] do
  #   link_to('View Online', "https:/stormalong.herokuapp.com/articles/#{article.id}")
  # end

  form partial: "form"
  permit_params :title, :body, :created_at, :updated_at, photos: []
  config.batch_actions = false

index do
   column :title do |article|
     link_to "#{article.title}", "/admin/articles/#{article.id}"
   end
   column :number_of_photos do |article|
     article.photos.length
   end
   column :created_at
   column :updated_at
  #  column :photos
   column do |article|
     links = link_to 'View Online', controller.redirect_to("https://stormalong.herokuapp.com/articles/#{article.id}")
     links += "  "
     links += link_to "Edit", edit_admin_article_path(article)
     links += "  "
     links += link_to "Delete", admin_article_path(article), :method => :delete, data: { confirm: "Are you sure?" }
     links
   end
end

 show do |article|
   attributes_table do
     row :title
     row :body
     article.photos.each do |photo|
       row :photo do
         link_to image_tag(photo.image.thumbnail), admin_article_photo_path(article,photo)
       end
       row :description do
         photo.description
       end
     end
    end
  end

  filter :title
  filter :created_at

  controller do

    def create
      create! do |format|
        format.html { redirect_to edit_admin_article_path(resource.id) }
      end
    end

  end




  # config.batch_actions = true
  # batch_action :flag do |ids|
  #   batch_action_collection.find(ids).each do |article|
  #     article.flag! :hot
  #   end
  #   redirect_to admin_articles_path, alert: "The articles have been flagged!"
  # end

end
