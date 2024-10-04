class User < ApplicationRecord
    # Validações
    validates :name, presence: true, length: { maximum: 100 }
    validates :email, presence: true, 
                      uniqueness: true, 
                      format: { with: URI::MailTo::EMAIL_REGEXP, message: "deve ser um endereço de e-mail válido" }
    validates :password, presence: true, 
                         length: { minimum: 6, maximum: 128 }
    validates :position, presence: true, length: { maximum: 50 }
  
    has_secure_password
  end
 