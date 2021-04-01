class CreateProfessors < ActiveRecord::Migration[6.1]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :subject
      t.string :password_digest
      t.timestamps
    end
  end
end
