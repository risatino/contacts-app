class RestaurantsController < ApplicationController
  def index
    @restaurants = Unirest.get("https://data.cityofchicago.org/resource/cwig-ma7x.json").body
  end

  def show
    @restaurant = Restaurant.find(params[:inspection_id])
  end
end
