class User < ApplicationRecord
  has_many :trips, through: :bookings
  has_many :bookings
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
