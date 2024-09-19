class Contract < ActiveRecord::Base
  # Validação de campos obrigatórios
  validates :contract_number, presence: true # Número do contrato
  validates :store_correspondent, presence: true # Correspondente da loja
  validates :cardholder, presence: true # Portador do banco
  validates :loyalty, presence: true # Fidelidade
  validates :equipment, presence: true # Equipamento
  validates :installation_type, presence: true # Tipo de instalação
  validates :installation_installments, presence: true # Parcelas de instalação
  validates :installation_payment_method, presence: true # Forma de pagamento da instalação
  validates :exempt, presence: true # Isento
  validates :billing_type, presence: true # Tipo de faturamento
  validates :due_date, presence: true # Data de vencimento
  validates :who_referred, presence: false # Quem referenciou
  validates :financial_comments, presence: false # Comentários financeiros
  validates :technical_comments, presence: false # Comentários técnicos
  validates :adhesion_total, presence: true # Total de adesão
  validates :rescission_total, presence: true # Total de rescisão
  validates :monthly_total, presence: true # Total mensal
  validates :start_date, presence: true # Data de início
  validates :end_date, presence: false # Data de fim
  validates :billing_address, presence: true # Endereço de faturamento
  validates :installation_address, presence: true # Endereço de instalação
end