json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido, :fechanacimiento, :correo
  json.url cliente_url(cliente, format: :json)
end
