json.extract! tarea, :id, :titulo, :descripcion, :completado, :usuario_id, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
