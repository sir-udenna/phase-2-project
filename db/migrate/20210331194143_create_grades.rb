class CreateGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :grades do |t|
      t.string :grade_achievement
      t.integer :student_id
      t.integer :lesson_id
      t.timestamps
    end
  end
end
