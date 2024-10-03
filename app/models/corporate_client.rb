class CorporateClient < ApplicationRecord
  
  has_many :enderecos, dependent: :destroy
  
  validates :company_name, :trade_name, :foundation_date, presence: true
  # validates_cnpj :document
end
