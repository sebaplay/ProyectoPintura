json.array!(@pinturas) do |pintura|
  json.extract! pintura, :id, :modelo, :color, :proveedor_id
  json.url pintura_url(pintura, format: :json)
end
