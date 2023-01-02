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

      expect(current_path).to eq(user_path(@em))
    end
    it 'with wrong credentials, user sees error message and is taken back to login page' do 
      visit login_path
      fill_in :username, with: 'em'
      fill_in :password, with: '123'
      click_button 'Submit'
      expect(current_path).to eq(login_path)
      expect(page).to have_content('Invalid email/password combination')

      
    end
  end
end