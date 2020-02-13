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

ActiveRecord::Schema.define(version: 2020_02_12_135015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appuis", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "beneficiaires", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "benefprojets", force: :cascade do |t|
    t.bigint "projet_id"
    t.bigint "beneficiaire_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["beneficiaire_id"], name: "index_benefprojets_on_beneficiaire_id"
    t.index ["projet_id"], name: "index_benefprojets_on_projet_id"
  end

  create_table "filiereprojets", force: :cascade do |t|
    t.bigint "projet_id"
    t.bigint "filiere_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["filiere_id"], name: "index_filiereprojets_on_filiere_id"
    t.index ["projet_id"], name: "index_filiereprojets_on_projet_id"
  end

  create_table "filieres", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "igaprojets", force: :cascade do |t|
    t.bigint "iga_id"
    t.bigint "projet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["iga_id"], name: "index_igaprojets_on_iga_id"
    t.index ["projet_id"], name: "index_igaprojets_on_projet_id"
  end

  create_table "igas", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "montants", force: :cascade do |t|
    t.string "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projets", force: :cascade do |t|
    t.string "nom_du_projet"
    t.string "ptf"
    t.string "forme_d_appui"
    t.string "objectif_generale_du_projet"
    t.string "aspsp"
    t.string "zone"
    t.string "partenaire_d_implementaton"
    t.string "debut_du_projet"
    t.string "fin"
    t.string "apdem"
    t.bigint "beneficiaire_id"
    t.bigint "appui_id"
    t.bigint "periode_id"
    t.bigint "montant_id"
    t.bigint "zone_id"
    t.bigint "iga_id"
    t.bigint "ptf_id"
    t.bigint "secteur_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appui_id"], name: "index_projets_on_appui_id"
    t.index ["beneficiaire_id"], name: "index_projets_on_beneficiaire_id"
    t.index ["iga_id"], name: "index_projets_on_iga_id"
    t.index ["montant_id"], name: "index_projets_on_montant_id"
    t.index ["periode_id"], name: "index_projets_on_periode_id"
    t.index ["ptf_id"], name: "index_projets_on_ptf_id"
    t.index ["secteur_id"], name: "index_projets_on_secteur_id"
    t.index ["user_id"], name: "index_projets_on_user_id"
    t.index ["zone_id"], name: "index_projets_on_zone_id"
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

  create_table "zoneprojets", force: :cascade do |t|
    t.bigint "zone_id"
    t.bigint "projet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["projet_id"], name: "index_zoneprojets_on_projet_id"
    t.index ["zone_id"], name: "index_zoneprojets_on_zone_id"
  end

  create_table "zones", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
