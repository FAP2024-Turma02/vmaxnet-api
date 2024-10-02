class CreateCorporateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :corporate_clients do |t|
      t.string :company_name, null: false
      t.string :trade_name, null: false
      t.string :document, null: false
      t.string :state_registration, null: false
      t.date :foundation_date, null: false
      t.boolean :has_partnership, null: false

      t.timestamps
    end
  end
end
