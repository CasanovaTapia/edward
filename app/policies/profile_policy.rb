class ProfilePolicy < ApplicationPolicy
  def update?
    create?
  end

  def destroy?
    user.present? && user.admin?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
