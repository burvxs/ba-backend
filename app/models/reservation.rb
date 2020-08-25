class Reservation < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :flight, :optional => true, foreign_key: 'flight_id'
end
