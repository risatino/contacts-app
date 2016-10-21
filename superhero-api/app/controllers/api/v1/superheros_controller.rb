class Api::V1::SuperherosController < ApplicationController
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
    
    render "show.json.jbuilder" 
  end

  def destroy
    @superhero = Superhero.find(params[:id]) 
    @superhero.destroy

    render json: {message: "superhero deleted"}
  end
end
