json.array!(@venta_productos) do |venta_producto|
  json.extract! venta_producto, :id, :venta_id, :producto_id
  json.url venta_producto_url(venta_producto, format: :json)
end
