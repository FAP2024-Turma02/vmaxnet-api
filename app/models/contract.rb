class Contract < ApplicationRecord
    validates :store_correspondent, presence: true
    validates :carrier, presence: true
    validates :fidelity, presence: true
    validates :equipments, presence: false
    validates :installation_type, presence: true
    validates :installation_installments, numericality: { only_integer: true, greater_than: 0 }
    validates :payment_method_installation, presence: true
    validates :billing_type, presence: true
    validates :expiration, presence: true
    validates :referrer, presence: true
    validates :total_adherence, numericality: true
    validates :total_cancellation, numericality: true
    validates :total_monthly, numericality: true
    validates :billing_address, presence: true
    validates :installation_address, presence: true
end  
