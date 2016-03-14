class Custmer < ActiveRecord::Base
has_one :zip
has_many :bookings
validates :name, :email,:mobile, presence: true
end
