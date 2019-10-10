class User < ApplicationRecord
  has_many :citas
  has_many :services, through: :citas

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
