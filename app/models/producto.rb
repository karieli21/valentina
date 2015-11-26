class Producto < ActiveRecord::Base
has_many :venta_producto
has_many :ventum, :through => :venta_producto

end
