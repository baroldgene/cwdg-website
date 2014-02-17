class TalkPolicy
  attr_reader :user, :talk

  def initialize(user, talk)
    user ||= User.new
    @user = user
    @talk = talk
  end

  #TODO fix new and create so that users can
  #only see page to make talks for themselves

  def create?
    @talk.creator_id == @user.id
  end

  def new?
    @user.persisted?
  end

  def update?
    @talk.creator_id == @user.id or @user.admin?
  end

  def edit?    ; update? end
  def destroy? ; update? end

end
