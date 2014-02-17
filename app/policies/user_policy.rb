class UserPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end
  end

  def update?
    @record.user == @user
  end
  def edit?   ; update? end
  def destroy? ;update? end
end
