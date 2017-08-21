class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def get_position
    require 'open-uri'
    require 'nokogiri'
    doc = Nokogiri::HTML(open("https://www.marinetraffic.com/en/ais/details/ships/shipid:4199684/mmsi:244670249/vessel:STORMALONG"))
    find_this = doc.css('.details_data_link')
    string = find_this[0].children
    @lat, @lng  = string.gsub(/[\ °]/,"").split('/')
  end

#
# def index
#   @articles = Article.all
# end
# # Lorenzo first guess for show
# def show
#   @article = Article.find(params[:id])
#   @photos = @article.photos
# end
#
#
# def new
#   @article = Article.new
# end
#
# def create
#   @article =  Article.create(article_params)
#   if @article.save
#     images_params.each do |image|
#       @article.photos.create(image: image)
#     end
#     redirect_to article_path(@article), notice: "Hey a new article"
#   else
#     render :new
#   end
# end
#
# def edit
#   @article = Article.find(params[:id])
# end
#
# def update
#   @article = Article.find(params[:id])
#   @article.update(article_params)
#
#   if @article.save
#     images_params.each do |image|
#       @article.photos.create(image: image)
#     end
#     redirect_to article_path(@article), notice: "Hey article updated"
#   else
#     render :edit
#   end
# end
#
# def destroy
#   @article = Article.destroy(params[:id])
#   redirect_to articles_path
# end
#
#
# private
# def article_params
#   params.require(:article).permit(:id, :title, :body, :photos)
# end
#
# def images_params
#   params[:images].present? ? params.require(:images) : []
# end

end
