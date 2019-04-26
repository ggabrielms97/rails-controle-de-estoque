json.extract! person, :id, :people_category_id, :name, :status, :document, :phone, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
