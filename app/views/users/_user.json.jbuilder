json.extract! user, :id, :email, :password, :password_confirmation, :salt, :rol, :name, :lastName, :document, :balance, :state, :license_url, :licenceExpires, :created_at, :updated_at
json.url user_url(user, format: :json)
