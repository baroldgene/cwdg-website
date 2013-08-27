require 'spec_helper'

describe "Signing In" do
  let(:uid) { "123456" }
  let!(:cwdg_user) { FactoryGirl.create(:user, :uid => uid ) }

  before do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
      :provider => :github,
      :uid => uid
    })

    visit root_path
    click_link "SIGN IN WITH GITHUB"
  end

  it "shoud have the users name as the link" do
    page.find(".login").should have_content(cwdg_user.name)
  end

  it "should direct back to the page you were on" do
    page.current_path.should eq(root_path)
  end
end

describe "Signing out" do

  before do
    visit root_path
  end
end
