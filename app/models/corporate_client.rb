class CorporateClient < ApplicationRecord
  has_many :contacts, as: :contactable
  has_many :contracts, as: :client
  has_many :services, through: :contracts
  has_one :endereco, as: :addressable
  has_many :enderecos, dependent: :destroy
  
  validates :company_name, :trade_name, :tax_id, :foundation_date, presence: true
  validates_cnpj :document
end
