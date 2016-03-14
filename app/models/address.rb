class Address < ActiveRecord::Base
has_one :zip
belongs_to :theater
<<<<<<< HEAD
validations :id,presence: true
=======
>>>>>>> 99c8cb570a09a0eedc56d95b45bb94ea718f7527
end

