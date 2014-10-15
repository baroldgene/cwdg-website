require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  setup do
    request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:github]
  end

  test 'it should create a user' do

  end

  test 'it should create a session' do

  end

  test 'it should redirect the user to the user\'s personal url' do

  end

  test 'it should clear the session' do

  end

  test 'it should redirect to the homepage' do

  end
end
