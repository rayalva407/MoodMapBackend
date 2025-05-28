class MoodsController < ApplicationController
  def index
    moods = Mood.all
    render moods
  end

  def create
    mood = Mood.create(mood_params)
    if mood.save()
      render json: mood
    else
      render json: { message: "Error! Could not save!" }
    end
  end

  private

  def mood_params
    params.require(:activity).permit(:latitude, :longitude, :mood_description)
  end
end
