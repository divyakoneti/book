class Address < ActiveRecord::Base
has_one :zip
belongs_to :theater
validations :id,presence: true
end

