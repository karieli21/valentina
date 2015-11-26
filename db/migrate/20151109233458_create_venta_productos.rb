class CreateVentaProductos < ActiveRecord::Migration
  def change
    create_table :venta_productos do |t|
      t.references :venta, index: true, foreign_key: true
      t.references :producto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
