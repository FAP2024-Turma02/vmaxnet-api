class Service < ApplicationRecord
  validates :name, :group, :monthly_fee, :adhesion_fee, :termination_fee, :description, :available_at, presence: true
end
