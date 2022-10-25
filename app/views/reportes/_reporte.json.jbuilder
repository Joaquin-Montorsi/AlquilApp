json.extract! reporte, :id, :descripcion, :user_id, :auto_id, :created_at, :updated_at
json.url reporte_url(reporte, format: :json)
