json.extract! client, :id, :name, :document_number, :address, :phone, :status, :created_at, :updated_at
json.url client_url(client, format: :json)
