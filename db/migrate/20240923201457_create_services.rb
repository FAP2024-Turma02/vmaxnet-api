class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :group
      t.decimal :monthly_fee
      t.decimal :adhesion_fee
      t.decimal :termination_fee
      t.text :description
      t.datetime :available_at

      t.timestamps
    end
  end
end
