require 'rails_helper' 

RSpec.describe "user registration form" do 
  it 'creates new user', :vcr do 
    visit root_path 
    click_on "Create New User"

    expect(current_path).to eq(register_path)


    fill_in :username, with: "louie"
    fill_in :password, with: "test123"

    click_on "Create User"
  end
end