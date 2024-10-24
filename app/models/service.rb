class Service < ApplicationRecord
    # Validações
    validates :name, presence: true
    validates :group, presence: true
    validates :monthly_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :subscription_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :termination_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :description, presence: true
    validates :available_on, presence: true
  end
  