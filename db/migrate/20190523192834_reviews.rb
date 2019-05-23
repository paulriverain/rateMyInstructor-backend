class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :student_id
      t.integer :instructor_id
      t.integer :rating
      t.string :comment

      t.timestamps
    end
  end
end
