class AddWorkoutRefToDailylogs < ActiveRecord::Migration
  def change
    add_reference :dailylogs, :workout, index: true, foreign_key: true
  end
end
