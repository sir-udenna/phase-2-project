class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :lesson_name
      t.string :location
      t.integer :time
      t.integer :professor_id
      t.timestamps
    end
  end
end




