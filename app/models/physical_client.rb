class PhysicalClient < ApplicationRecord
    has_many :contacts, as: :contactable
    has_many :contracts, as: :client
    has_many :services, through: :contracts
    has_one :endereco, as: :addressable
    has_many :enderecos, dependent: :destroy
    
    validates :name, length: { minimum: 8 }, presence: true
    validates :nickname, allow_blank: true
    validates :cpf, length: { is: 11 }, uniqueness: true, presence: true
    validates :rg, uniqueness: true, presence: true
    validates :date_of_birth, presence: true
  end
