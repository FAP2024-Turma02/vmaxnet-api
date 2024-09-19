class Contract < ActiveRecord::Base
  validates_presence_of :contract_number, :store_correspondent, :cardholder, :loyalty, :equipment, :installation_type, :installation_installments, :installation_payment_method, :exempt, :billing_type, :due_date, :adhesion_total, :rescission_total, :monthly_total, :start_date :billing_address :installation_address
end
