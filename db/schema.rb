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

ActiveRecord::Schema.define(version: 2020_02_06_092538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projets", force: :cascade do |t|
    t.string "nom_du_projet"
    t.string "ptf"
    t.string "secteur"
    t.string "forme_d_appui"
    t.string "filière_associees"
    t.string "iga"
    t.string "objectif_generale_du_projet"
    t.string "aspsp"
    t.string "zone"
    t.string "partenaire_d_implementaton"
    t.string "beneficiaires"
    t.integer "montant"
    t.string "nature_de_l_appui"
    t.integer "debut_du_projet"
    t.integer "fin"
    t.string "apdem"
    t.bigint "secteur_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["secteur_id"], name: "index_projets_on_secteur_id"
    t.index ["user_id"], name: "index_projets_on_user_id"
  end

  create_table "ptfs", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "secteurprojets", force: :cascade do |t|
    t.bigint "secteur_id"
    t.bigint "projet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["projet_id"], name: "index_secteurprojets_on_projet_id"
    t.index ["secteur_id"], name: "index_secteurprojets_on_secteur_id"
  end

  create_table "secteurs", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
