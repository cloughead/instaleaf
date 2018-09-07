json.extract! dispensary, :id, :name, :city, :province, :country, :postal_code, :phone, :email, :website, :kind, :description, :lat, :lng, :created_at, :updated_at
json.url dispensary_url(dispensary, format: :json)
