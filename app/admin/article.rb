ActiveAdmin.register Article do

  form partial: "form"
  permit_params :title, :body, :lng, :lat, :created_at, :updated_at, photos: []
  config.batch_actions = false

  action_item :view_articles, only: :index do
    link_to "https://sy-stormalong.herokuapp.com", target: :blank do
      'Visit Website'
    end
  end
  # view article button on the article show page
  action_item :view_article, only: :show do
    link_to "https://sy-stormalong.herokuapp.com/articles/#{resource.id}", target: :blank do
      'View Article'
    end
  end

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
     links = link_to "Edit", edit_admin_article_path(article)
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

    def get_position
      require 'open-uri'
      require 'nokogiri'
      doc = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:4199684/mmsi:244670249/vessel:STORMALONG"))
      find_this = doc.css('.details_data_link')
      string = find_this[0].children
      lat, lng  = string.gsub(/[\ °]/,"").split('/')
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
