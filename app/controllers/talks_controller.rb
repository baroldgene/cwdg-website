class TalksController < ApplicationController
  before_filter :set_talk, only: [:edit, :update, :destroy]
  after_action :verify_authorized, except: [:new]

  def new
    @talk = Talk.new
    @user = User.where(slug: params[:user_id]).first

    if current_user.nil?
      redirect_to root_path
    else
      redirect_to user_path(current_user)
    end
  end

  def create
    @talk = Talk.new(talk_params)
    @talk.creator_id = current_user.id

    authorize @talk

    if @talk.save
      redirect_to current_user
    else
      render :new
    end
  end

  def edit
    authorize @talk
  end

  def update
    authorize @talk
    if @talk.update(talk_params)
      redirect_to current_user
    else
      render :edit
    end
  end

  def destroy
    authorize @talk
    @talk.destroy

    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end

  private

  def set_talk
    @talk = Talk.find(params[:id])
  end

  def talk_params
    params.require(:talk).permit(:title, :content, :is_lightning_talk)
  end
end
