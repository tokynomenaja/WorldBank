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

ActiveRecord::Schema.define(version: 2020_03_19_140143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "actus", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_actus_on_user_id"
  end

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

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "engagements", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "forme_d_appuis", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "formeprojets", force: :cascade do |t|
    t.bigint "forme_id"
    t.bigint "projet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["forme_id"], name: "index_formeprojets_on_forme_id"
    t.index ["projet_id"], name: "index_formeprojets_on_projet_id"
  end

  create_table "formes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "formesecteurs", force: :cascade do |t|
    t.bigint "forme_id"
    t.bigint "secteur_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["forme_id"], name: "index_formesecteurs_on_forme_id"
    t.index ["secteur_id"], name: "index_formesecteurs_on_secteur_id"
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

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "sender_id"
    t.bigint "admin_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_id"], name: "index_messages_on_admin_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "montants", force: :cascade do |t|
    t.integer "price"
    t.bigint "unite_id"
    t.bigint "projet_id"
    t.bigint "secteur_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["projet_id"], name: "index_montants_on_projet_id"
    t.index ["secteur_id"], name: "index_montants_on_secteur_id"
    t.index ["unite_id"], name: "index_montants_on_unite_id"
  end

  create_table "organismes", force: :cascade do |t|
    t.bigint "ptf_id"
    t.bigint "iga_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["iga_id"], name: "index_organismes_on_iga_id"
    t.index ["ptf_id"], name: "index_organismes_on_ptf_id"
    t.index ["user_id"], name: "index_organismes_on_user_id"
  end

  create_table "partenaireprojets", force: :cascade do |t|
    t.bigint "partenaire_id"
    t.bigint "projet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["partenaire_id"], name: "index_partenaireprojets_on_partenaire_id"
    t.index ["projet_id"], name: "index_partenaireprojets_on_projet_id"
  end

  create_table "partenaires", force: :cascade do |t|
    t.text "plateforme"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pemprojets", force: :cascade do |t|
    t.bigint "pem_id"
    t.bigint "projet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pem_id"], name: "index_pemprojets_on_pem_id"
    t.index ["projet_id"], name: "index_pemprojets_on_projet_id"
  end

  create_table "pems", force: :cascade do |t|
    t.string "title"
    t.bigint "engagement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["engagement_id"], name: "index_pems_on_engagement_id"
  end

  create_table "projets", force: :cascade do |t|
    t.string "nom_du_projet"
    t.text "objectif_generale_du_projet"
    t.text "aspsp"
    t.date "debut_du_projet"
    t.date "fin"
    t.text "comment"
    t.string "siteweb"
    t.boolean "validation", default: false
    t.bigint "appui_id"
    t.bigint "ptf_id"
    t.bigint "bailleur_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appui_id"], name: "index_projets_on_appui_id"
    t.index ["bailleur_id"], name: "index_projets_on_bailleur_id"
    t.index ["ptf_id"], name: "index_projets_on_ptf_id"
  end

  create_table "ptfs", force: :cascade do |t|
    t.string "title"
    t.string "image_url"
    t.string "lien"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_publications_on_user_id"
  end

  create_table "secteur_filieres", force: :cascade do |t|
    t.bigint "secteur_id"
    t.bigint "filiere_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["filiere_id"], name: "index_secteur_filieres_on_filiere_id"
    t.index ["secteur_id"], name: "index_secteur_filieres_on_secteur_id"
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
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tarifs", force: :cascade do |t|
    t.string "reference"
    t.float "valeur"
    t.bigint "unite_id"
    t.boolean "utilise", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unite_id"], name: "index_tarifs_on_unite_id"
  end

  create_table "unites", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_admin"
    t.boolean "is_super_admin", default: false
    t.boolean "is_consultant", default: false
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
