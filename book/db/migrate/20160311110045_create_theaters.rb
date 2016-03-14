class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :t_name
      t.string :t_owner
      t.integer :t_no_of_seats
      t.integer :address_id
      t.timestamps null: false
    end
  end
end
