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

ActiveRecord::Schema[7.0].define(version: 2024_09_16_184248) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "corporate_clients", force: :cascade do |t|
    t.string "company_name", null: false
    t.string "trade_name", null: false
    t.string "document", null: false
    t.string "state_registration", null: false
    t.date "foundation_date", null: false
    t.boolean "has_partnership", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.integer "contract_number", null: false
    t.string "store_correspondent", null: false
    t.string "cardholder", null: false
    t.boolean "loyalty", default: false
    t.string "equipment", null: false
    t.string "installation_type", null: false
    t.integer "installation_installments", null: false
    t.string "installation_payment_method", null: false
    t.boolean "exempt", default: false
    t.string "billing_type", null: false
    t.date "due_date", null: false
    t.string "who_referred"
    t.text "financial_comments"
    t.text "technical_comments"
    t.decimal "adhesion_total", precision: 10, scale: 2, null: false
    t.decimal "rescission_total", precision: 10, scale: 2, null: false
    t.decimal "monthly_total", precision: 10, scale: 2, null: false
    t.date "start_date", null: false
    t.date "end_date"
    t.string "billing_address", null: false
    t.string "installation_address", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
