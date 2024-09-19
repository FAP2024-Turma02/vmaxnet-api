class Contract < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.integer :contract_number, null: false # Número do contrato
      t.string :store_correspondent, null: false # Correspondente da loja
      t.string :cardholder, null: false # Portador do banco
      t.boolean :loyalty, default: false # Fidelidade
      t.string :equipment, null: false # Equipamento
      t.string :installation_type, null: false # Tipo de instalação
      t.integer :installation_installments, null: false # Parcelas de instalação
      t.string :installation_payment_method, null: false # Forma de pagamento da instalação
      t.boolean :exempt, default: false # Isento
      t.string :billing_type, null: false # Tipo de faturamento
      t.date :due_date, null: false # Data de vencimento
      t.string :who_referred # Quem referenciou
      t.text :financial_comments # Comentários financeiros
      t.text :technical_comments # Comentários técnicos
      t.decimal :adhesion_total, precision: 10, scale: 2, null: false # Total de adesão
      t.decimal :rescission_total, precision: 10, scale: 2, null: false # Total de rescisão
      t.decimal :monthly_total, precision: 10, scale: 2, null: false # Total mensal
      t.date :start_date, null: false # Data de início
      t.date :end_date # Data de fim
      t.string :billing_address, null: false # Endereço de faturamento
      t.string :installation_address, null: false # Endereço de instalação
    end
  end
end