require "rails_helper"
RSpec.describe LibrariesController do
  let(:user) { FactoryBot.create(:user, user_name: 'rspec_test') }
  let!(:library) { FactoryBot.create(:library, name: 'Rspec L') }
   let!(:book) { FactoryBot.create(:book, library: library) }

#  before { allow(controller).to receive(:current_user) { user } }
  before { allow(controller).to receive(:authenticate_user) { user } }

  describe "GET index" do
    it "check index" do
      get :index
      expect(response.status).to eq 200
    end
  end
end