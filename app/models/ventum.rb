class Ventum < ActiveRecord::Base
  belongs_to :cliente
  has_many :venta_producto
  has_many :producto, :through => :venta_producto


end
