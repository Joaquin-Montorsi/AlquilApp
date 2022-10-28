json.extract! user, :id, :email, :password, :password_confirmation, :salt, :rol, :name, :lastName, :document, :state, :license_url, :liscenceExpires, :created_at, :updated_at
json.url user_url(user, format: :json)
