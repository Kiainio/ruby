json.extract! product, :id, :product_id, :product_name, :description, :retail_price, :sales, :image_directory, :created_at, :updated_at
json.url product_url(product, format: :json)
