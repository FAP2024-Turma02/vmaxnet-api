class CreateClientUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :client_users do |t|

      t.timestamps
    end
  end
end
