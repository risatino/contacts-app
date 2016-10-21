class Superhero
  attr_accessor :id, :name, :power

  def initialize(hash)
    @id = hash["id"]
    @name = hash["name"]
    @power = hash["power"]    
  end

  def self.all
    collection = []
      Unirest.get("#{ ENV["api_domain_name"] }/api/v1/superheros.json").body.each do |superhero_hash|
        @superheros << Superhero.new(superhero_hash)
      end
    collection
  end

  def self.find(params_id)
    Superhero.new("#{ ENV["api_domain_name"] }/api/v1/superheros/#{params[:id]}.json").body
  end
end