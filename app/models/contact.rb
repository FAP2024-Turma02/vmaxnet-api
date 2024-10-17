class Contact < ApplicationRecord
    # Validações para ctype
    validates :ctype, presence: true, inclusion: { in: %w[email phone],
      message: "%{value} não é um tipo válido" }
  
    # Validações para cvalue
    validates :cvalue, presence: true
    validates :cvalue, format: { with: URI::MailTo::EMAIL_REGEXP, message: "deve ser um email válido", if: -> { ctype == 'email' } }
    
    # Validação ajustada para números de telefone brasileiros
    validates :cvalue, format: { 
      with: /\A(\+55)?(0?(\d{2})?9\d{8}|(\d{2})?\d{8,9})\z/, 
      message: "deve ser um número de telefone válido", if: -> { ctype == 'phone' } 
    }
    
end
