class CreateMovieTheaters < ActiveRecord::Migration
  def change
    create_table :movie_theaters do |t|
      t.integer :movie_id
      t.integer :theater_id
      t.timestamps null: false
    end
  end
end
