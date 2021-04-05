class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string "img_url"
      t.timestamps
    end
  end
end
