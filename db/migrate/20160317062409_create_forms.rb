class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :address
      t.string :country

      t.timestamps null: false
    end
  end
end
