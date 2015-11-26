json.array!(@venta) do |ventum|
  json.extract! ventum, :id, :folio, :fechacompra, :precio, :cantidad, :cliente_id
  json.url ventum_url(ventum, format: :json)
end
