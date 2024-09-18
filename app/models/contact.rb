class Contact < ApplicationRecord
  enum contact_type: { email: 0, phone: 1 }

  validates :contact_type, :contact, presence: true
  validates :contact, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email' }, if: :email?
  validates :contact, format: { with: /\A\d{8,9}\z/, message: 'must be a valid phone number' }, if: :phone?

  private

  def email?
    contact_type == 'email'
  end

  def phone?
    contact_type == 'phone'
  end
end
