class CreateEnderecos < ActiveRecord::Migration[7.0]
  def change
    create_table :enderecos do |t|
      t.integer :tipo
      t.string :logradouro
      t.string :referencia
      t.string :cep
      t.string :cidade
      t.string :bairro
      t.string :numero
      t.string :complemento
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
