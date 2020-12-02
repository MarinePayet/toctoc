class InboxPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:participants).where(participants: {user_id: user.id})
    end
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def new_direct_message?
    return true
  end

  def create_direct_message?
    return true
  end
end
