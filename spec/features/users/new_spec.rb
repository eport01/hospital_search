require 'rails_helper' 

RSpec.describe "user registration form" do 
  it 'creates new user' do 
    visit hospitals_path 
    click_on "Create New User"
  end
end