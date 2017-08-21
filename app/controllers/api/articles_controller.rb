class Api::ArticlesController < ApplicationController
  def index
    articles = Article.all.order(created_at: :desc)
    render status: 200, json: articles
  end

  def show
    article = Article.find(params[:id])

    render status: 200, json: article
  end

end
