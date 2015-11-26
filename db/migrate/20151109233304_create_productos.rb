class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :precio
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
