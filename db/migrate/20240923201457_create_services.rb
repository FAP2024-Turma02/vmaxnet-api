class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.integer :group, null: false
      t.decimal :monthly_fee, null: false
      t.decimal :adhesion_fee, null: false
      t.decimal :termination_fee, null: false
      t.text :description, null: false
      t.datetime :available_at, null: false

      t.timestamps
    end
  end
end
