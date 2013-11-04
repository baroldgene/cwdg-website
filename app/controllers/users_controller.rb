class UsersController < ApplicationController
  before_filter :set_user, only: [:show]

  def index
    @user = User.all
  end

  def show
  end

  def edit
  end

  private

  def set_user
    @user = User.friendly.find(params[:id])
  end
end
