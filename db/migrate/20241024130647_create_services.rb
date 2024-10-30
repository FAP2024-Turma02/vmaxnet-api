class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :group
      t.decimal :monthly_value, precision: 10, scale: 2
      t.decimal :subscription_value, precision: 10, scale: 2
      t.decimal :termination_value, precision: 10, scale: 2
      t.text :description
      t.date :available_on

      t.timestamps
    end
  end
end
