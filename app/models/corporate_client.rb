class CorporateClient < ApplicationRecord
  validates :company_name, :trade_name, :tax_id, :foundation_date, presence: true
  validates_cnpj :document
end
