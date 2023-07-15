require "rails_helper"
RSpec.describe 'User' do
  
  let(:user) { FactoryBot.create(:user, user_name: 'rspec_test') }

  context "check valid user" do
 
    it "is valid with valid attributes" do
      
      expect(user).to be_valid
    end 

    it "is valid with Invalid attributes" do
      user1 =  FactoryBot.create(:user, user_name: 'rspec_test') 
      expect(user1).to be_valid
    end
  end
 
end