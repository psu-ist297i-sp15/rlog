class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.text :description
      t.string :style

      t.timestamps null: false
    end
  end
end
