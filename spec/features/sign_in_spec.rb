require 'spec_helper'

describe "Signing in" do

  let(:uid) { "loluid" }
  let!(:mark) { FactoryGirl.create(:user, :uid => uid ) }

  before do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
      :provider => :github,
      :uid => uid
    })
    click_link "Sign In"
  end

  it "redirects you to the homepage" do
    page.find(".user_info").should have_content("Some User")
    page.current_path.should eq(root_path)
  end

  visit new_talk_path
  fill_in "blrg", :with => "dfsdfdfkkkjj"

end
