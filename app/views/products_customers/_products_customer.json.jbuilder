json.extract! products_customer, :id, :product_id, :customer_id, :created_at, :updated_at
json.url products_customer_url(products_customer, format: :json)
