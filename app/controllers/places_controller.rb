class PlacesController < ApplicationController

  def index
    if @current_user.nil?
      redirect_to "/login"
    else
      @places = Place.where(user_id: @current_user.id)
    end
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({ "place_id" => @place["id"] })
  end

  def new
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place["user_id"] = @current_user.id
    @place.save
    redirect_to "/places"
  end

end
