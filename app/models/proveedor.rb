class Proveedor < ActiveRecord::Base
has_many :factura
has_many :pintura, :through => :factura

validates :empresa, presence: true
validates :correo, presence: true
end
