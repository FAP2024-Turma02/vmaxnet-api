class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.integer :group, null: false, default: 0
      t.decimal :monthly_fee, null: false
      t.decimal :adhesion_fee, null: false
      t.decimal :termination_fee, null: false
      t.text :description, null: false
      t.datetime :available_at, null: false

      t.timestamps
    end

    execute <<-SQL
      ALTER TABLE services
      ADD CONSTRAINT check_positive_fees
      CHECK (monthly_fee >= 0 AND adhesion_fee >= 0 AND termination_fee >= 0);
    SQL
  end
end
