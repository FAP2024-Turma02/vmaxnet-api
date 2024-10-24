
ActiveRecord::Schema[7.0].define(version: 2024_10_17_031706) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "type"
    t.string "first_name"
    t.string "how_find_us"
    t.string "nickname"
    t.string "cpf"
    t.string "rg"
    t.date "birth_date"
    t.string "legal_name"
    t.string "trade_name"
    t.string "cnpj"
    t.string "ie"
    t.date "foundation_date"
    t.boolean "has_partnership"

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

ActiveRecord::Schema[7.0].define(version: 2024_10_09_033130) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "address_type"
    t.string "street_name"
    t.string "reference"
    t.string "zip_code"
    t.string "city"
    t.string "neighborhood"
    t.string "address"
    t.string "number"
    t.string "complement"
    t.float "latitude"
    t.float "longitude"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
