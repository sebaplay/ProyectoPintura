class Proveedor < ActiveRecord::Base
has_many :factura
has_many :pintura, :through => :factura
end
