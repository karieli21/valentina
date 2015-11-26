class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.date :fechanacimiento
      t.string :correo

      t.timestamps null: false
    end
  end
end
