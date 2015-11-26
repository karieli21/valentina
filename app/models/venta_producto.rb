class VentaProducto < ActiveRecord::Base
  belongs_to :ventum
  belongs_to :producto
end
