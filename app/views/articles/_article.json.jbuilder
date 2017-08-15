json.extract! article, :id, :title, :body, :photos, :updated_at
json.url article_url(article, format: :json)
