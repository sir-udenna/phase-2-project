class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :lesson_name
      t.string :location
      t.string :time
      t.integer :student_id
      t.integer :professor_id
      t.timestamps
    end
  end
end
