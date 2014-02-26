require 'spec_helper'
require 'factory_girl_rails'

describe 'Comment' do
	before(:each) do
		visit "/films"
	end

	context 'existing user' do
		let!(:user) { FactoryGirl.create :user }
		let!(:film) { FactoryGirl.create :film }
		let!(:comment) { FactoryGirl.create :comment }
		it 'writes comment' do
		#signin
			first(:link, 'Sign in').click
			fill_in "user_email", with: user.email
			fill_in 'user_password', with: user.password
			click_button 'Sign in'
			first(:link, 'Show').click

		#write comment
			fill_in 'comment_title', with: comment.title
			fill_in 'comment_comment', with: comment.comment
			click_button 'Post'
		
			expect { click_button 'Post' }.to change { Comment.count }.by(1)
		end
	end
end

