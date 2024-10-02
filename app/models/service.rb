class Service < ApplicationRecord
  has_many :contracts
  has_many :corporate_clients, through: :contracts
  has_many :physical_clients, through: :contracts
  
  validates :name, :group, :monthly_fee, :adhesion_fee, :termination_fee, :description, :available_at, presence: true
end
