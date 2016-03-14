class MovieTheater < ActiveRecord::Base
validations :id,presence: true
belongs_to :movie
belongs_to :theater
has_many :bookings
end

