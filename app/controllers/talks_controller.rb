class TalksController < ApplicationController
  load_and_authorize_resource
  # before_filter :set_talk, only: [:edit, :update, :destroy]
  # authorize_resource

  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    @talk.creator_id = current_user.id

    respond_to do |format|
      if @talk.save
        format.html { redirect_to :back, notice: 'Talk was successfully create' }
      else
        format.html { redirect_to :back, alert: 'Talk failed' }
      end
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
