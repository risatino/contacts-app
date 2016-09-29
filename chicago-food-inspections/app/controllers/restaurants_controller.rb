class RestaurantsController < ApplicationController
  def index
    # @restaurants = Restaurant.all
    @restaurants = Unirest.get("https://data.cityofchicago.org/resource/cwig-ma7x.json").body
  end
end
