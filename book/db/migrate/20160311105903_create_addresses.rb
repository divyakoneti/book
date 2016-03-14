class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :zip_id
      t.string :street

      t.timestamps null: false
    end
  end
end
