class WelcomeController < ApplicationController 
  def index 
    if params[:zip]
      @results = HospitalFacade.find_by_zip(params[:zip])
    elsif params[:city] && params[:state]
      @results = HospitalFacade.find_by_city(params[:city], params[:state])
    end
  end

  
end