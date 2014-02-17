class UsersController < ApplicationController
  before_filter :set_user, only: [:show, :edit, :update]

  def index
    @user = User.all
  end

  def show
    @pattern = GeoPattern.generate(@user.name, {base_color: "#5A3231"})
  end

  def edit
    redirect_to root_path if current_user.nil? or @user.id != current_user.id
  end

  def update
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to user_path, notice: 'Profile updated!' }
      else
        format.html { redirect_to user_path, notice: "Failed!" }
      end
    end
  end

  private

  def set_user
    @user = User.friendly.find(params[:id]).decorate
  end

  # Only allow bio to be updated for now.
  # We pull the rest of the user data from GitHub
  def user_params
    params.require(:user).permit(:bio)
  end
end
