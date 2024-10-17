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

ActiveRecord::Schema[7.0].define(version: 2024_10_17_051552) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.string "store_correspondent"
    t.string "carrier"
    t.string "fidelity"
    t.string "equipments"
    t.string "installation_type"
    t.integer "installation_installments"
    t.string "payment_method_installation"
    t.boolean "is_exempt"
    t.string "billing_type"
    t.string "expiration"
    t.string "referrer"
    t.text "financial_observations"
    t.text "technical_observations"
    t.decimal "total_adherence", precision: 10, scale: 2
    t.decimal "total_cancellation", precision: 10, scale: 2
    t.decimal "total_monthly", precision: 10, scale: 2
    t.date "start_date"
    t.date "end_date"
    t.string "billing_address"
    t.string "installation_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
