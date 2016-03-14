class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :no_of_seats
      t.string :show_type
      t.integer :cost
      t.integer :movie_theater_id
      t.integer :custmer_id
      
      t.timestamps null: false
    end
  end
end
