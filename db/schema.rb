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

ActiveRecord::Schema.define(version: 20131210132714) do

  create_table "dons", force: true do |t|
    t.string   "nom"
    t.float    "montant"
    t.date     "date_offert"
    t.integer  "interlocuteur_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "echanges", force: true do |t|
    t.string   "nature"
    t.text     "cr"
    t.date     "date_ech"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interlocuteurs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
    t.string   "prenom"
    t.date     "date_naissance"
    t.text     "negociation"
    t.text     "caractere"
    t.text     "discussion"
    t.text     "biographie"
    t.text     "interets"
    t.integer  "utilisateur_id"
  end

  create_table "participants", force: true do |t|
    t.integer  "interlocuteur_id"
    t.integer  "utilisateur_id"
    t.integer  "echange_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postes", force: true do |t|
    t.string   "name"
    t.date     "date_debut"
    t.date     "date_fin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "interlocuteur_id"
    t.integer  "societe_id"
  end

  create_table "societes", force: true do |t|
    t.string   "nom"
    t.boolean  "client"
    t.text     "adresse_postale"
    t.text     "activites"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "utilisateurs", force: true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
