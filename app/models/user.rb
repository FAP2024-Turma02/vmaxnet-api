class User < ApplicationRecord
  has_many :corporate_clients
  has_many :physical_clients

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { minimum: 3 }

  include DeviseTokenAuth::Concerns::User
end
