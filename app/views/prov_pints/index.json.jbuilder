json.array!(@prov_pints) do |prov_pint|
  json.extract! prov_pint, :id, :proveedor_id, :pintura_id
  json.url prov_pint_url(prov_pint, format: :json)
end
