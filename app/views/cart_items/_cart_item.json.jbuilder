json.extract! cart_item, :id, :menu_item_id, :menu_item_name, :menu_item_price, :created_at, :updated_at
json.url cart_item_url(cart_item, format: :json)