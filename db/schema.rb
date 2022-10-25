# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_25_013621) do
  create_table "alquilers", force: :cascade do |t|
    t.float "precio"
    t.datetime "vencimiento"
    t.integer "user_id"
    t.integer "auto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "autos", force: :cascade do |t|
    t.string "modelo"
    t.string "marca"
    t.string "patente"
    t.string "color"
    t.string "img_url"
    t.integer "nro_puertas"
    t.integer "nro_asientos"
    t.integer "estado"
    t.boolean "encendido"
    t.float "velocidad"
    t.integer "cant_combustible"
    t.integer "posicion_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posicions", force: :cascade do |t|
    t.float "x"
    t.float "y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reportes", force: :cascade do |t|
    t.text "descripcion"
    t.string "user_id"
    t.string "auto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tarjeta", force: :cascade do |t|
    t.integer "nro_tarjeta"
    t.date "fecha_caducidad"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "rol"
    t.string "nombre"
    t.string "apellido"
    t.integer "DNI"
    t.string "email"
    t.integer "estado"
    t.string "liscencia_url"
    t.string "cedula_azul_url"
    t.integer "posicion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
