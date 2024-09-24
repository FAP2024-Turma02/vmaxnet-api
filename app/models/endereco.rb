class Endereco < ApplicationRecord

    validates :tipo, presence: true
    validates :logradouro, uniqueness: true, length: { maximum: 100 },presence: true
    validates :referencia, length: { maximum: 40 } ,presence: false
    validates :cep, length: { minimum: 8 } ,presence:true
    validates :cidade, length: { maximum: 40 }, presence: true
    validates :bairro, length: { maximum: 40 }, presence: true
    validates :numero, length: { maximum: 40 }, presence: true
    validates :complemento, length: { maximum: 40 }, presence: true
    validates :latitude, presence: false
    validates :longitude, presence: false

end
