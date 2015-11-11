class Pintura < ActiveRecord::Base
  has_many :prov_pint
  has_many :proveedor, :through => :prov_pint
  
  belongs_to :proveedor
  end
