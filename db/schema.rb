# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_19_024028) do

  create_table "cidades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nome", limit: 100
    t.bigint "estado_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "estados", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "uf", limit: 2
    t.string "nome", limit: 25
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "localidades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nome", limit: 25
    t.bigint "cidade_id", null: false
    t.float "lat"
    t.float "long"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cidade_id"], name: "index_localidades_on_cidade_id"
  end

  create_table "monitoramentos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.decimal "temperatura", precision: 10, scale: 2
    t.decimal "ph", precision: 10, scale: 2
    t.decimal "turbidez", precision: 10, scale: 2
    t.decimal "condutividade", precision: 10, scale: 2
    t.bigint "localidade_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["localidade_id"], name: "index_monitoramentos_on_localidade_id"
  end

  add_foreign_key "cidades", "estados"
  add_foreign_key "localidades", "cidades"
  add_foreign_key "monitoramentos", "localidades"
end
