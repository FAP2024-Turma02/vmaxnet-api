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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
