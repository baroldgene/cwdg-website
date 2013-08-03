class SessionsController < ApplicationController

  # TODO: Redirect to back from whatever page they were at
  def create
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to :back, notice: "Signed in."
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Sign out"
  end
end
