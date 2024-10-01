class CreatePhysicalClients < ActiveRecord::Migration[7.0]
  def change
    create_table :physical_clients do |t|
      t.string :name
      t.string :nickname
      t.string :cpf
      t.string :rg
      t.date :date_of_birth

      t.timestamps
    end
  end
end
