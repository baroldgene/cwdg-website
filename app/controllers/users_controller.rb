class UsersController < ApplicationController
  before_filter :load_user, only: [:show]

  def index
    @user = User.all
  end

  def show
  end

  def edit
  end

  def load_user
    @user = User.where(username: params[:username]).first!
  end
end
