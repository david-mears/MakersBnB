class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.decimal :price, precision: 1000, scale: 2, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
