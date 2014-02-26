describe 'Sign up' do
	before(:each) do
		visit "/search"
	end

	it 'search films' do
		
		fill_in "q", with: 'Mononoke'
		click_button 'Search'

		page.should have_content 'Show'

	end
end
