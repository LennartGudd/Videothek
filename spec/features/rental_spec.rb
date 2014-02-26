require 'spec_helper'
require 'factory_girl_rails'

describe 'Sign up' do
	before(:each) do
		visit "/search"
	end

	context 'existing user' do
		let!(:user) { FactoryGirl.create :user }
		let!(:film) { FactoryGirl.create :film }
		

		it 'rents film' do
			#signin
			first(:link, 'Sign in').click
			fill_in "user_email", with: user.email
			fill_in 'user_password', with: user.password
			click_button 'Sign in'
			first(:link, 'Show').click
			
			click_button 'Ausleihen'
			page.should have_content 'Your rentals'
		end
	end
end
