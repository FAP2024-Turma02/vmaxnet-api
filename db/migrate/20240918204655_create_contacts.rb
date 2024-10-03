class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :email, null: true
      t.string :phone, null: true

      t.timestamps
    end
  end
end
