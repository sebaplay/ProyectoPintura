class Factura < ActiveRecord::Base
  belongs_to :proveedor
  belongs_to :pintura

  validates :cantidad, presence: true
  validates :precio, presence: true
end
