class SongsController < ApplicationController
	def create
		@workout = Workout.find(params[:workout_id])
		@song = @workout.songs.create(params[:song].permit(:title, :duration, :description))

		redirect_to workout_path(@workout)
	end


end
