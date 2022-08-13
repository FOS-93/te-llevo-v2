class User < ApplicationRecord
  has_many :trips, through: :bookings
  has_many :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    "#{name} #{last_name}"
  end
end
