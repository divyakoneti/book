class CreateUserBasics < ActiveRecord::Migration
  def change
    create_table :user_basics do |t|

      t.timestamps null: false
    end
  end
end
