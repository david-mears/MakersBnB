class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :forename, null: false
      t.string :surname, null: false
      t.string :username, null: false
      t.string :password, null: false
      t.string :email, null: false
      
      t.timestamps
    end
  end
end
