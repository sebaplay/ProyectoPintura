json.array!(@facturas) do |factura|
  json.extract! factura, :id, :proveedor_id, :pintura_id, :cantidad, :precio 
  json.url factura_url(factura, format: :json)
end
