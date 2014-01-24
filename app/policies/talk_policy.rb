class TalkPolicy
  attr_reader :user, :talk

  def initialize(user, talk)
    user ||= User.new
    @user = user
    @talk = talk
  end

  def create?  ; user.persisted?            end
  def new?     ; create?                    end

  def update?  ; talk.creator_id == user.id end
  def edit?    ; update?                    end

  def destroy? ; false                      end
end
