json.extract! user, :id, :rol, :name, :lastName, :document, :email, :state, :license_url, :blueCard_url, :position_id, :created_at, :updated_at
json.url user_url(user, format: :json)
