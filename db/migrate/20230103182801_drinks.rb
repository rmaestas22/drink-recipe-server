class Drinks < ActiveRecord::Migration[6.1]
  def change
    create_table  :drink do |t|
      t.string :drink_name
      t.text :ingredients
      t.text :instructions
      t.integer :rating
      t.boolean :made
      t.integer :user_id
    end
  end
end