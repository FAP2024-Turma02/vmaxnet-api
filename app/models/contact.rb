class Contact < ApplicationRecord
  belongs_to :contactable, polymorphic: true

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :phone, format: { with: /\A\d{8,9}\z/ }, allow_blank: true

  validate :email_or_phone_present

  private

  def email_or_phone_present
    if email.blank? && phone.blank?
      errors.add(:base, "Either email or phone must be present")
    end
  end
end
