class CommentPolicy < ApplicationPolicy
  def update?
    user.present? && (record.user == user || user.admin?)
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
