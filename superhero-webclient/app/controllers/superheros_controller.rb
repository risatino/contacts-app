class SuperherosController < ApplicationController
  def index
    @superheros = Superhero.all
  end 

  def new
    
  end

  def create
    @superhero = Unirest.post("#{ ENV["api_domain_name"] }/api/v1/superheros",
                            headers: {"Accept" => "application/json"},
                            parameters: {
                              name: params[:name],
                              power: params[:power]
                              }).body
    
    redirect_to "/superheros/#{@employee["id"]}"
  end

  def show
    @superhero = Superhero.find(params[:id])
  end


  def edit
    @superhero = Unirest.get("#{ ENV["api_domain_name"] }/api/v1/superheros/#{params[:id]}.json").body  
  end

  def update
    @superhero = Unirest.patch("#{ ENV["api_domain_name"] }/api/v1/superheros/#{params[:id]}.json",
                              headers: {"Accept" => "application/json"},
                              parameters: {
                                name: params[:name],
                                power: params[:power]}).body
    p "************"
    p @superhero
    p "***********"

    redirect_to "/superheros/#{@superhero['id']}"
  end

  def destroy
    response = Unirest.delete("#{ ENV["api_domain_name"] }/api/v1/superheros/#{params[:id]}.json", 
                            headers: {"Accept" => "application.json"}).body

    flash[:success] = response["message"]
    redirect_to "/superheros"
  end
end
