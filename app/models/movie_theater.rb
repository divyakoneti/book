class MovieTheater < ActiveRecord::Base
belongs_to :movie
belongs_to :theater
has_many :bookings
end

