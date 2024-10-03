class CreateClientUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :client_users do |t|
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      
      t.timestamps
    end

    add_index :client_users, :email, unique: true
  end
end
