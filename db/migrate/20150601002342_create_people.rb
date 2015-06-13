class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :birthdate
      t.string :hometown

      t.timestamps null: false
    end
  end
end
