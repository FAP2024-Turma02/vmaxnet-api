class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.string :store_correspondent
      t.string :carrier
      t.string :fidelity
      t.string :equipments
      t.string :installation_type
      t.integer :installation_installments
      t.string :payment_method_installation
      t.boolean :is_exempt
      t.string :billing_type
      t.string :expiration
      t.string :referrer
      t.text :financial_observations
      t.text :technical_observations
      t.decimal :total_adherence, precision: 10, scale: 2
      t.decimal :total_cancellation, precision: 10, scale: 2
      t.decimal :total_monthly, precision: 10, scale: 2
      t.date :start_date
      t.date :end_date
      t.string :billing_address
      t.string :installation_address

      t.timestamps
    end
  end
end
