json.extract! auto, :id, :modelo, :marca, :patente, :color, :img_url, :nro_puertas, :nro_asientos, :estado, :encendido, :velocidad, :cant_combustible, :posicion_id, :user_id, :created_at, :updated_at
json.url auto_url(auto, format: :json)
