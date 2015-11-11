class ProvPint < ActiveRecord::Base
  belongs_to :proveedor
  belongs_to :pintura
end
