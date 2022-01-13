class PlacesController < ApplicationController
  def new 
    @place = Place.new
  end

  def create
    @place = Place.create(place_params)

    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end

  def index
    @places = Place.all
  end

  private
    def place_params
      params.require(:place).permit([:name, :zip_code, :image])
    end
end
