class Flight < ApplicationRecord
  has_many :reservations
  belongs_to :plane, :optional => true, foreign_key: 'flight_id'
end
