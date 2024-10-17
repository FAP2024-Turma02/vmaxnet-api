class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :type
      t.string :first_name
      t.string :how_find_us
      t.string :nickname
      t.string :cpf
      t.string :rg
      t.date :birth_date
      t.string :legal_name
      t.string :trade_name
      t.string :cnpj
      t.string :ie
      t.date :foundation_date
      t.boolean :has_partnership

      t.timestamps
    end
  end
end
