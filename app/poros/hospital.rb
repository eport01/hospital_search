class Hospital 
  attr_reader :id, :name, :address, :city, :state, :zip, :beds, :trauma, :hospital_id
  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @address = data[:attributes][:address]
    @city = data[:attributes][:city]
    @state = data[:attributes][:state]
    @zip = data[:attributes][:zip]
    @beds = data[:attributes][:beds]
    @trauma = data[:attributes][:trauma]
    @hospital_id = data[:attributes][:hospital_id]
  end

  def city_state(city, state)
    "#{city}, #{state}"
  end

  
end