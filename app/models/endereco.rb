class Endereco < ApplicationRecord
    belongs_to :addressable, polymorphic: true
    belongs_to :physical_client, optional: true
    belongs_to :corporate_client, optional: true
    
    validates :tipo, presence: true
    validates :logradouro, uniqueness: true, length: { maximum: 100 }, presence: true
    validates :referencia, length: { maximum: 40 }, allow_blank: true
    validates :cep, length: { minimum: 8 }, presence: true
    validates :cidade, length: { maximum: 40 }, presence: true
    validates :bairro, length: { maximum: 40 }, presence: true
    validates :numero, length: { maximum: 40 }, presence: true
    validates :complemento, length: { maximum: 40 }, allow_blank: true
    validates :latitude, allow_blank: true
    validates :longitude, allow_blank: true
  end
  