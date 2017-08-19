class Api::ArticlesController < ApplicationController
  def index
    articles = Article.all
    render status: 200, json: articles
  end

  def show
    article = Article.friendly.find(params[:id])

    render status: 200, json: article
  end

end
