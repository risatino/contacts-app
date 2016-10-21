class Employee
  attr_accessor :id, :first_name, :last_name, :email, :snn, :birthday

  def initialize(hash)
    @id = hash["id"]
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]
    @email = hash["email"]
    @ssn = hash["ssn"]
    @birthday = hash["birthday"] 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find(params_id)
    Employee.new(Unirest.get("#{ENV["api_domain_name"]}"))
  end

  def self.create(hash_options)
    Unirest.post("#{ ENV["api_domain_name"] }/api/v1/#{params[:id]}.json",
                            headers: {"Accept" => "application/json"},
                            parameters: {
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              email: params[:email],
                              ssn: params[:ssn]
                              }).body
  end

end