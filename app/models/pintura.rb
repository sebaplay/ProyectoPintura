class Pintura < ActiveRecord::Base
  has_many :factura
  has_many :proveedor, :through => :factura

  belongs_to :proveedor
  end
