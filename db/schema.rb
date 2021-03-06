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

ActiveRecord::Schema.define(version: 20180812073642) do

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "manual_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["manual_id"], name: "index_comments_on_manual_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "manuals", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "skintype"
    t.string   "age"
    t.boolean  "atopy"
    t.boolean  "pimple"
    t.boolean  "allergy"
    t.boolean  "bb"
    t.boolean  "lip"
    t.boolean  "eyebrow"
    t.boolean  "eyeline"
    t.boolean  "color"
    t.integer  "skincolor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "category"
    t.index ["user_id"], name: "index_manuals_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "brand"
    t.text     "contents"
    t.string   "skintype"
    t.string   "age"
    t.boolean  "atopy"
    t.boolean  "pimple"
    t.boolean  "allergy"
    t.boolean  "bb"
    t.boolean  "lip"
    t.boolean  "eyebrow"
    t.boolean  "eyeline"
    t.boolean  "color"
    t.integer  "skincolor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "category"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "review"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["product_id"], name: "index_reviews_on_product_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "phone"
    t.string   "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "userspecs", force: :cascade do |t|
    t.string   "skintype"
    t.string   "age"
    t.boolean  "atopy"
    t.boolean  "pimple"
    t.boolean  "allergy"
    t.boolean  "bb"
    t.boolean  "lip"
    t.boolean  "eyebrow"
    t.boolean  "eyeline"
    t.boolean  "color"
    t.integer  "skincolor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
