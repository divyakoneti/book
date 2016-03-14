class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.string :movie_director

      t.timestamps null: false
    end
  end
end
