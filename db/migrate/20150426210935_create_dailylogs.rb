class CreateDailylogs < ActiveRecord::Migration
  def change
    create_table :dailylogs do |t|
      t.string :performance
      t.date :day
      t.string :distance
      t.string :duration
      t.text :notes
      t.text :comments
      t.integer :workout_id

      t.timestamps null: false
    end
  end
end
