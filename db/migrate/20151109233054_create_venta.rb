class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.integer :folio
      t.date :fechacompra
      t.integer :precio
      t.integer :cantidad
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
