class CreateZips < ActiveRecord::Migration
  def change
    create_table :zips do |t|
      t.string :district
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
