class SongsController < ApplicationController
	def create
		@workout = Workout.find(params[:workout_id])
		@song = @workout.songs.create(params[:song].permit(:title, :duration, :description))


		redirect_to workout_path(@workout)

	end

	def edit 
		@song = Song.find(params[:id])
	end

	def update
		@song = Song.find(params[:id])
		@song.update(song_params)

		redirect_to workout_path(@workout)
	end

	def song_params
		params.require(:song).permit(:title, :duration, :description)
	end



end
