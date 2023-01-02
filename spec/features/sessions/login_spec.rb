require 'rails_helper' 

RSpec.describe 'log in' do 
  describe 'an existing user can login' do 
    before(:each) do 
      @em = User.create!(username: 'em', password: '1234')
    end
    it 'when visitor visits root, sees a button to login' do 
      visit root_path 
      click_button 'Log In'
      expect(current_path).to eq(login_path)

      fill_in :username, with: 'em'
      fill_in :password, with: '1234'
      click_button 'Submit'

      expect(current_path).to eq(root_path)
    end
    it 'with wrong or blank credentials, user sees error message and is taken back to login page' do 
      visit login_path
      fill_in :username, with: 'em'
      fill_in :password, with: '123'
      click_button 'Submit'
      expect(current_path).to eq(login_path)
      expect(page).to have_content('Invalid email/password combination')
    end
  end

  describe 'can logout a user' do 
    before(:each) do 
      @em = User.create!(username: 'em', password: '1234')
    end
    it 'current user can click on logout button and be taken back to root path' do 
      visit login_path
      fill_in :username, with: 'em'
      fill_in :password, with: '1234'
      click_button 'Submit'

      click_button "Log Out"
      expect(current_path).to eq(root_path)
      expect(page).to_not have_button('Log Out')

      expect(page).to have_button('Log In')
      expect(page).to have_button('Create New User')

    end

  end
end