class Pintura < ActiveRecord::Base
  has_many :factura
  has_many :proveedor, :through => :factura

  belongs_to :proveedor
  validates :modelo, presence: true
  validates :color, presence: true
  end
