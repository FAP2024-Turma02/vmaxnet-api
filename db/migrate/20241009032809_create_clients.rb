class CreateClients < ActiveRecord::Migration[6.1]
  def change
    change_table :clients do |t|
      # Adiciona as colunas que estão faltando
      t.string :how_find_us unless column_exists?(:clients, :how_find_us)
      t.string :type unless column_exists?(:clients, :type)

      # Atributos específicos de IndividualClient
      t.string :name unless column_exists?(:clients, :name)
      t.string :nickname unless column_exists?(:clients, :nickname)
      t.string :cpf unless column_exists?(:clients, :cpf)
      t.string :rg unless column_exists?(:clients, :rg)
      t.date :date_of_birth unless column_exists?(:clients, :date_of_birth)

      # Atributos específicos de CorporateClient
      t.string :legal_name unless column_exists?(:clients, :legal_name)
      t.string :trade_name unless column_exists?(:clients, :trade_name)
      t.string :cnpj unless column_exists?(:clients, :cnpj)
      t.string :ie unless column_exists?(:clients, :ie)
      t.date :foundation_date unless column_exists?(:clients, :foundation_date)
      t.boolean :has_partnership unless column_exists?(:clients, :has_partnership)
    end
  end
end
