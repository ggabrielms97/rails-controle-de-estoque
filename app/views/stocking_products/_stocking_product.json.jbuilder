json.extract! stocking_product, :id, :stocking_id, :product_id, :numbering_id, :entry, :out, :balance, :sale_product_id, :created_at, :updated_at
json.url stocking_product_url(stocking_product, format: :json)
