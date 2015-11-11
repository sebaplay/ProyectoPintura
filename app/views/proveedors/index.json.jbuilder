json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :empresa, :correo
  json.url proveedor_url(proveedor, format: :json)
end
