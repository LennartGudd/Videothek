require 'spec_helper'

describe 'Sign up' do
	before(:each) do
		visit root_path
	end

	it 'allows to sign up' do
		click_link 'Sign up'
		fill_in 'email', with: 'testuser@video.de'
		fill_in 'password', with: 'testtest'
		fill_in 'password_confirmation', with: 'testtest'
		fill_in 'birthday', with: '21.07.1991'
		fill_in 'firstname', with: 'test'
		fill_in 'name', with: 'user'
		fill_in 'zipcode',	with: '48149'
		fill_in 'city', with: 'muenster'
		fill_in 'street', with: 'johannkraneweg 25'

		expect { click_button 'Sign up' }.to change { User.count }.by(1)

		page.should have_content'Welcome'
	end
end
