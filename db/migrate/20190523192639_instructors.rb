class Instructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :num_mods_taught
      t.string :bootcamp_name

      t.timestamps
    end
  end
end
