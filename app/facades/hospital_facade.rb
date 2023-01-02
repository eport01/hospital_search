class HospitalFacade 
  def self.hospitals 
    HospitalService.all_hospitals[:data].map do |hospital|
      Hospital.new(hospital)
    end
  end

  def self.find_by_zip(zip)
    HospitalService.zip_search(zip)[:data].map do |hospital|
      Hospital.new(hospital)
    end
  end

  def self.find_by_city(city, state)
    HospitalService.city_search(city, state).map do |hospital|
      Hospital.new(hospital)
    end
  end
end