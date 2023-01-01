class HospitalsController < ApplicationController
  def index 
    @hospitals = HospitalFacade.hospitals 
  end
end