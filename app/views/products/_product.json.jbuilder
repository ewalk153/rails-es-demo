json.extract! product, :id, :title, :body, :published_at, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
