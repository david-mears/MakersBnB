class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.references :space, foreign_key: true, null: false
      t.references :user, foreign_key: true 
      t.date :date, null: false
      t.timestamps
    end
  end
end
