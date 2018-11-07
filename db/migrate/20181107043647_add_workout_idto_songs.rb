class AddWorkoutIdtoSongs < ActiveRecord::Migration[5.2]
  def change
  	add_column :songs, :workout_id, :string
  end
end
