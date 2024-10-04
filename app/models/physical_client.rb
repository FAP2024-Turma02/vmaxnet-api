class PhysicalClient < ApplicationRecord
    validates :name, presence: true, length: { maximum: 100 }
    validates :nickname, presence: true, length: { maximum: 50 }
    validates :cpf, presence: true, format: { with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/, message: "deve estar no formato XXX.XXX.XXX-XX" }, uniqueness: true
    validates :rg, presence: true, format: { with: /\A[a-zA-Z]{2}-\d{7}\z/, message: "deve estar no formato XX-1234567" }
    validates :birth_date, presence: true, format: { with: /\A\d{2}\/\d{2}\/\d{4}\z/, message: "deve estar no formato DD/MM/YYYY" }
  end
  