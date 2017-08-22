class Api::ArticlesController < ApplicationController
  def index
    ordered_articles = Article.all.order(created_at: :desc)
    articles = ordered_articles.select{ |a| a.published == true}
    render status: 200, json: articles
  end

  def show
    article = Article.find(params[:id])

    render status: 200, json: article
  end

end
