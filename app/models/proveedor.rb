class Proveedor < ActiveRecord::Base
has_many :prov_pint
has_many :pintura, :through => :prov_pint
end
