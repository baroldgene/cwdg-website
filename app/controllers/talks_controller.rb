class TalksController < ApplicationController
  before_filter :set_talk, only: [:edit, :update, :destroy]

  def new
    @talk = Talk.new
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
  end

  def update
  end

  def destroy
  end

  private

  def talk_params
    params.require(:talk).permit(:title, :content, :is_lightning_talk)
  end
end
