class MoodsController < ApplicationController
  def index
    moods = Mood.all
    render json: moods
  end

  def create
    mood = Mood.new(mood_params)

    if Mood.exists?(latitude: mood.latitude) and Mood.exists?(longitude: mood.longitude)
      render json: { message: "Record already exists" }
    elsif mood.save()
      render json: mood
    else
      render json: { message: "Error! Could not save!" }
    end
  end

    private

      def mood_params
        params.require(:mood).permit(:latitude, :longitude, :mood_description)
      end
end
