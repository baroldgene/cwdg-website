class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if !user.id.nil?
      can :read, :all
      can :manage, User,         :id    => user.id
      can :manage, Talk,         :creator_id => user.id
      can :manage, Presentation, :speaker_id => user.id
    else
      cannot :manage, :all
      can :read, :all
    end
  end
end
