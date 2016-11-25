 class Restaurant
  attr_accessor :aka_name, :city, :state, :inspection_date, :inspection_id

  def initialize(hash)
    @aka_name = hash["aka_name"]
    @city = hash["city"]
    @state = hash["state"]
    @inspection_date = hash["inspection_date"]
    @inspection_id = hash["inspection_id"]
  end

  def self.find(params_id)
    Restaurant.new(Unirest.get("#{ENV["api_domain_name"]}"))
  end

  # def self.create(hash_options)
  #   Unirest.post("#{ ENV["api_domain_name"] }/api/v1/#{params[:id]}.json",
  #                           headers: {"Accept" => "application/json"},
  #                           parameters: {
  #                             aka_name: params[:aka_name],
  #                             city: params[:city],
  #                             state: params[:state],
  #                             inspection_date: params[:email],
  #                             inspection_id: params[:inspection_id]
  #                             }).body
  # end
end