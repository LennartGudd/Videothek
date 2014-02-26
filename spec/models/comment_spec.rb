describe Comment do
	subject {FactoryGirl.create(:comment)}
	
	its(:user_id) {should == 1}
	its(:title) {should == 'title'}
	its(:comment) {should == 'comment'}

end
