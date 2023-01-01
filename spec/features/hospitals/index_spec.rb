require 'rails_helper'

RSpec.describe 'hospitals index page' do 
  describe 'as a visitor when i visit the hospitals index page' do 
    it 'i see a list of hospitals by name and can click on their name and go to show page', :vcr do 
      visit hospitals_path 
      expect(page).to have_content("List of Hospitals in the U.S.")
      expect(page).to have_content("HOUSTON METHODIST SAN JACINTO HOSPITAL ALEXANDER CAMPUS")
      expect(page).to have_content("Number of Beds: 182")
      expect(page).to have_content("Trauma Status: NOT AVAILABLE")
      expect(page).to have_content("WOODS AT PARKSIDE,THE")


    end
  end
end