class Api::V2::SuperherosController < ApplicationController
  def index
    @superheros = Superhero.all
  end

  def create
    @superhero = Superhero.create(
                                  name: params[:name],
                                  power: params[:power]
                                  )
    redirect_to "/superheros/#{@superhero.id}.json"
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def edit
    @superhero = Superhero.find(params[:id])  
  end

  def update
    @superhero = Superhero.find(params[:id])
    @superhero.name = params[:name] || @employee.first_name
    @superhero.power = params[:power] if params[:power]
    @superhero.save
    
    redirect_to "/api/v1/superheros/#{@superhero["id"]}" 
  end

  def destroy
    @superhero = Superhero.find(params[:id]) 
    @superhero.destroy

    render json: {message: "superhero deleted"}
  end
end
