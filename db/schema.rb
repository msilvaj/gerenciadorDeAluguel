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

ActiveRecord::Schema.define(version: 2020_03_18_223224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dietas", force: :cascade do |t|
    t.date "dataInicio"
    t.date "dataFinal"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_dietas_on_usuario_id"
  end

  create_table "refeicoes", force: :cascade do |t|
    t.time "horario"
    t.text "descricao"
    t.bigint "trefeicao_id"
    t.bigint "dieta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dieta_id"], name: "index_refeicoes_on_dieta_id"
    t.index ["trefeicao_id"], name: "index_refeicoes_on_trefeicao_id"
  end

  create_table "trefeicoes", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.boolean "admin"
    t.string "nome"
    t.decimal "peso"
    t.decimal "pesoIdeal"
    t.decimal "altura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "superadmin_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "dietas", "usuarios"
  add_foreign_key "refeicoes", "dietas"
  add_foreign_key "refeicoes", "trefeicoes"
end
