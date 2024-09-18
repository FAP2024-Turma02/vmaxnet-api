class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.integer :contact_type, null: false
      t.string :contact, null: false

      t.timestamps
    end
  end
end
