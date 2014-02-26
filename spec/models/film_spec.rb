describe Comment do
	subject {FactoryGirl.create(:film)}
	its(:id) {should == 1}
	its(:title) {should == 'Film'}
end
