require 'spec_helper'
require 'factory_girl_rails'



describe 'Sign up' do
	before(:each) do
		visit "/search"
	end

	it 'allows to sign up' do
		click_link 'Sign up'
		fill_in "user_email", with: 'testuser@video.de'
		fill_in 'user_password', with: 'testtest'
		fill_in 'user_password_confirmation', with: 'testtest'
		fill_in 'user_birthday', with: '21.07.1991'
		fill_in 'user_firstname', with: 'test'
		fill_in 'user_name', with: 'user'
		fill_in 'user_zipcode',	with: '48149'
		fill_in 'user_city', with: 'muenster'
		fill_in 'user_street', with: 'johannkraneweg 25'

		expect { click_button 'Sign up' }.to change { User.count }.by(1)

		page.should have_content 'Welcome! You have signed up successfully.'
	end



context 'existing user' do
	let!(:user) { FactoryGirl.create :user }

	it 'allows to sign in' do
        	click_link 'Sign in'
		fill_in "user_email", with: user.email
		fill_in 'user_password', with: 'testtest'
		click_button 'Sign in'

   page.should have_content 'Signed in successfully.'


	end

	it 'allows to sign out' do
		click_link 'Sign in'
        fill_in "user_email", with: user.email
 		fill_in "user_password", with: 'testtest'
		click_button 'Sign in'

		click_link 'log-out'

  page.should have_content 'Signed out successfully.'

	end

   end

end
