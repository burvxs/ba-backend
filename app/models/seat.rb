class Seat < ApplicationRecord
    belongs_to :plane, optional: true

    def self.create_seats(rows)
        seats = []
        rows.to_i.times do 
            is_reserved = [true, false].sample
            reservee = 'Empty'
            if is_reserved
                reservee = [User.first.name, User.second.name].sample
            end
            seats << create!(
                is_reserved: is_reserved,
                reservee: reservee
            )
        end
        return seats
    end
end
