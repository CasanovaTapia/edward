class UserPolicy < ApplicationPolicy
  def create?
    record.secret == '01241529'
  end

  def update?
    record.id == user.id
  end
  class Scope < Scope
    def resolve
      scope
    end
  end
end
