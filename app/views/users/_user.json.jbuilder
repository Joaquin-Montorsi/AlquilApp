json.extract! user, :id, :rol, :nombre, :apellido, :DNI, :email, :estado, :liscencia_url, :cedula_azul_url, :posicion_id, :created_at, :updated_at
json.url user_url(user, format: :json)
