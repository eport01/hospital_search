class HospitalFacade 
  def self.hospitals 
    HospitalService.all_hospitals[:data].map do |hospital|
      Hospital.new(hospital)
    end
  end
end