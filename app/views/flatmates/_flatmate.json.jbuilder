json.extract! flatmate, :id, :name, :phone, :email, :password, :created_at, :updated_at
json.url flatmate_url(flatmate, format: :json)
