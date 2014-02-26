describe User do
	subject {FactoryGirl.create(:user)}
	
	its(:email) {should == 'testy@test.de'}
	its(:password) {should == 'testtest'}

end
