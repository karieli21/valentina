# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151109234338) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.date     "fechanacimiento"
    t.string   "correo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "venta", force: :cascade do |t|
    t.integer  "folio"
    t.date     "fechacompra"
    t.integer  "precio"
    t.integer  "cantidad"
    t.integer  "cliente_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "venta", ["cliente_id"], name: "index_venta_on_cliente_id"

  create_table "venta_productos", force: :cascade do |t|
    t.integer  "venta_id"
    t.integer  "producto_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "venta_productos", ["producto_id"], name: "index_venta_productos_on_producto_id"
  add_index "venta_productos", ["venta_id"], name: "index_venta_productos_on_venta_id"

end
