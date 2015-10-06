class ProfilePolicy < ApplicationPolicy
  def create?
    user.present?
  end

  def update?
    create?
  end

  def destroy?
    user.present? && user.admin?
  end

  def tag_edit?
    update?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
