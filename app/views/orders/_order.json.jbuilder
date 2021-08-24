json.extract! order, :id, :date, :user_id, :delivered_at, :created_at, :updated_at
json.url order_url(order, format: :json)