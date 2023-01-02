require 'rails_helper' 

RSpec.describe "user registration form" do 
  it 'creates new user', :vcr do 
    visit root_path 
    click_on "Create New User"

    expect(current_path).to eq(register_path)


    fill_in :username, with: "louie"
    fill_in :password, with: "test123"

    click_on "Create User"
    user = User.last.id 
    expect(current_path).to eq(root_path)
  end

  it 'if username or password is blank it takes uesr back to register path' do 
    visit root_path 
    click_on "Create New User"

    expect(current_path).to eq(register_path)


    fill_in :username, with: "louie"
    click_on "Create User"
    expect(current_path).to eq(register_path)
  end
end