class CreateCustmers < ActiveRecord::Migration
  def change
    create_table :custmers do |t|
      t.string :name
      t.string :email
      t.integer :password
      t.integer :mobile
      t.string :role
      t.integer :zip_id
      t.timestamps null: false
    end
  end
end
