class PhysicalClient < ApplicationRecord
    validates :name, length: { minimum: 8 }, presence: true
    validates :nickname, presence: false
    validates :cpf, lentgh { is: 11 }, uniqueness: true, presence: true
    validates :rg, uniqueness: true, presence: true
    validates :date_of_birth, presence: true
end
