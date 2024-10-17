class Address < ApplicationRecord
  validates :address_type, presence: true
  validates :street_name, :city, :neighborhood, :address, presence: true
  validates :zip_code, presence: true, format: { with: /\A\d{5}-\d{3}\z/, message: "deve estar no formato 12345-678" }
  validates :number, length: { maximum: 10 }
  
  # Limites de comprimento
  validates :street_name, :city, :neighborhood, length: { maximum: 100 }
  validates :reference, length: { maximum: 255 }

  # Complemento é opcional, mas com limite de comprimento
  validates :complement, length: { maximum: 100 }, allow_blank: true

end
