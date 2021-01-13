json.extract! transaction_order, :id, :delivery_name, :delivery_address, :delivery_phone, :delivery_postcode, :order_status, :deal_sum, :created_at, :updated_at
json.url transaction_order_url(transaction_order, format: :json)
