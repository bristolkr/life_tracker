class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :name
      t.string :date
      t.string :description

      t.timestamps null: false
    end
  end
end
