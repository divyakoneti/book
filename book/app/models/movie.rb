class Movie < ActiveRecord::Base
has_many :movie_theaters
has_many :theaters,:through=> :movie_theaters
validates :id,presence: true
end
