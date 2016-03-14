class Theater < ActiveRecord::Base
has_one :address
	has_many :movie_theaters
	has_many :movies,:through=> :movie_theaters
end


